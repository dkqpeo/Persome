package com.c3l2.persome.event.repository;

import com.c3l2.persome.event.entity.EventImg;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EventImgRepository extends JpaRepository<EventImg, Long> {

    void deleteByEventId(Long eventId);
}
