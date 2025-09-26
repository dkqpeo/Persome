package com.c3l2.persome.event.repository;

import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.entity.constant.EventStatus;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface EventRepository extends JpaRepository<Event, Long> {
    List<Event> findAllByOrderByStartDateDesc();

    @Query("SELECT e FROM Event e LEFT JOIN FETCH e.eventImgs WHERE e.id = :id")
    Optional<Event> findByIdWithImages(@Param("id") Long id);

    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query("update Event e set e.name = :name, e.thumbnailUrl = :thumbnailUrl, e.description = :description, e.startDate = :startDate, e.endDate = :endDate, e.status = :status where e.id = :id")
    int updateEvent(@Param("id") Long id,
                    @Param("name") String name,
                    @Param("thumbnailUrl") String thumbnailUrl,
                    @Param("description") String description,
                    @Param("startDate") LocalDateTime startDate,
                    @Param("endDate") LocalDateTime endDate,
                    @Param("status") EventStatus status);
}
