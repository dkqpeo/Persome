package com.c3l2.persome.cs.service;

import com.c3l2.persome.cs.dto.FAQRequestDto;
import com.c3l2.persome.cs.dto.FAQResponse;
import com.c3l2.persome.cs.entity.Faq;
import com.c3l2.persome.cs.entity.constant.FaqCategory;
import com.c3l2.persome.cs.entity.constant.FaqChannel;
import com.c3l2.persome.cs.repository.FAQRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class FAQService {

    private final FAQRepository faqRepository;

    public List<FAQResponse> getFAQs(FaqCategory category, FaqChannel channel, String keyword) {
        List<Faq> faqs = faqRepository.findAllByOrderBySortOrderAsc();
        return faqs.stream()
                .filter(Faq::isActive)
                .filter(faq -> category == null || faq.getCategory() == category)
                .filter(faq -> channel == null || faq.getChannel() == channel)
                .filter(faq -> matchesKeyword(faq, keyword))
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
                requestDto.getIsActive(),
                requestDto.getChannel()
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

    private boolean matchesKeyword(Faq faq, String keyword) {
        if (!StringUtils.hasText(keyword)) {
            return true;
        }

        String loweredKeyword = keyword.trim().toLowerCase();
        if (loweredKeyword.isEmpty()) {
            return true;
        }

        String normalized = loweredKeyword.replaceAll("^#+", "");
        if (normalized.isEmpty()) {
            normalized = loweredKeyword;
        }

        String question = faq.getQuestion() == null ? "" : faq.getQuestion().toLowerCase();
        String answer = faq.getAnswer() == null ? "" : faq.getAnswer().toLowerCase();

        return question.contains(loweredKeyword)
                || answer.contains(loweredKeyword)
                || question.contains(normalized)
                || answer.contains(normalized);
    }
}
