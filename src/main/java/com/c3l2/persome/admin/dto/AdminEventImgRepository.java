package com.c3l2.persome.admin.dto;

import com.c3l2.persome.event.entity.EventImg;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public interface AdminEventImgRepository extends JpaRepository<EventImg, Long> {

    void deleteByEventId(Long eventId);
}
