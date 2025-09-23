package com.c3l2.persome.cs.service;

import com.c3l2.persome.cs.dto.FAQRequestDto;
import com.c3l2.persome.cs.dto.FAQResponse;
import com.c3l2.persome.cs.entity.Faq;
import com.c3l2.persome.cs.entity.constant.FaqCategory;
import com.c3l2.persome.cs.repository.FAQRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class FAQService {

    private final FAQRepository faqRepository;

    public List<FAQResponse> getFAQs(FaqCategory category) {
        List<Faq> faqs = category == null
                ? faqRepository.findAllByOrderBySortOrderAsc()
                : faqRepository.findAllByCategoryOrderBySortOrderAsc(category);
        return faqs.stream()
                .filter(Faq::isActive)
                .map(FAQResponse::from)
                .collect(Collectors.toList());
    }

    public FAQResponse getFAQ(Long faqId) {
        return FAQResponse.from(findFaq(faqId));
    }

    @Transactional
    public FAQResponse createFAQ(FAQRequestDto requestDto) {
        Faq saved = faqRepository.save(requestDto.toEntity());
        return FAQResponse.from(saved);
    }

    @Transactional
    public FAQResponse updateFAQ(Long faqId, FAQRequestDto requestDto) {
        Faq faq = findFaq(faqId);
        faq.update(
                requestDto.getCategory(),
                requestDto.getQuestion(),
                requestDto.getAnswer(),
                requestDto.getSortOrder(),
                requestDto.getIsActive()
        );
        return FAQResponse.from(faq);
    }

    @Transactional
    public void deleteFAQ(Long faqId) {
        Faq faq = findFaq(faqId);
        faqRepository.delete(faq);
    }

    @Transactional
    public FAQResponse increaseViewCount(Long faqId) {
        Faq faq = findFaq(faqId);
        faq.increaseViewCount();
        return FAQResponse.from(faq);
    }

    private Faq findFaq(Long faqId) {
        return faqRepository.findById(faqId)
                .orElseThrow(() -> new RuntimeException("FAQ not found for ID: " + faqId)); // General exception
    }
}