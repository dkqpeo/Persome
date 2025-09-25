package com.c3l2.persome.cs.service;

import com.c3l2.persome.cs.dto.NoticeRequestDto;
import com.c3l2.persome.cs.dto.NoticeResponseDto;
import com.c3l2.persome.cs.entity.Notice;
import com.c3l2.persome.cs.entity.constant.Category;
import com.c3l2.persome.cs.entity.constant.FaqChannel;
import com.c3l2.persome.cs.repository.NoticeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class NoticeService {

    private final NoticeRepository noticeRepository;

    public List<NoticeResponseDto> getNotices(Category category, FaqChannel channel, String keyword) {
        List<Notice> notices = noticeRepository.findAllByIsActiveTrueOrderByCreatedAtDesc();
        return notices.stream()
                .filter(Notice::isActive)
                .filter(notice -> category == null || notice.getCategory() == category)
                .filter(notice -> channel == null || toNoticeChannel(notice) == channel)
                .filter(notice -> matchesKeyword(notice, keyword))
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
                requestDto.getCategory(),
                requestDto.getChannel()
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

    private FaqChannel toNoticeChannel(Notice notice) {
        FaqChannel channel = notice.getChannel();
        return channel == null ? FaqChannel.ONLINE : channel;
    }

    private boolean matchesKeyword(Notice notice, String keyword) {
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

        String title = notice.getTitle() == null ? "" : notice.getTitle().toLowerCase();
        String content = notice.getContent() == null ? "" : notice.getContent().toLowerCase();

        return title.contains(loweredKeyword)
                || content.contains(loweredKeyword)
                || title.contains(normalized)
                || content.contains(normalized);
    }
}
