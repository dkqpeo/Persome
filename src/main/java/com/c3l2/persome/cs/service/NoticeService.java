package com.c3l2.persome.cs.service;

import com.c3l2.persome.cs.dto.NoticeRequestDto;
import com.c3l2.persome.cs.dto.NoticeResponseDto;
import com.c3l2.persome.cs.entity.Notice;
import com.c3l2.persome.cs.entity.constant.Category;
import com.c3l2.persome.cs.repository.NoticeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class NoticeService {

    private final NoticeRepository noticeRepository;

    public List<NoticeResponseDto> getNotices(Category category) {
        List<Notice> notices = category == null
                ? noticeRepository.findAllByIsActiveTrueOrderByCreatedAtDesc()
                : noticeRepository.findAllByCategoryOrderByCreatedAtDesc(category)
                .stream()
                .filter(Notice::isActive)
                .collect(Collectors.toList());
        return notices.stream()
                .map(NoticeResponseDto::from)
                .collect(Collectors.toList());
    }

    @Transactional
    public NoticeResponseDto getNotice(Long noticeId) {
        Notice notice = findNotice(noticeId);
        notice.increaseViewCount();
        return NoticeResponseDto.from(notice);
    }

    @Transactional
    public NoticeResponseDto createNotice(NoticeRequestDto requestDto) {
        Notice saved = noticeRepository.save(requestDto.toEntity());
        return NoticeResponseDto.from(saved);
    }

    @Transactional
    public NoticeResponseDto updateNotice(Long noticeId, NoticeRequestDto requestDto) {
        Notice notice = findNotice(noticeId);
        notice.update(
                requestDto.getTitle(),
                requestDto.getContent(),
                requestDto.getImportant(),
                requestDto.getActive(),
                requestDto.getCategory()
        );
        return NoticeResponseDto.from(notice);
    }

    @Transactional
    public void deleteNotice(Long noticeId) {
        Notice notice = findNotice(noticeId);
        noticeRepository.delete(notice);
    }

    private Notice findNotice(Long noticeId) {
        return noticeRepository.findById(noticeId)
                .orElseThrow(() -> new RuntimeException("Notice not found for ID: " + noticeId)); // General RuntimeException
    }
}