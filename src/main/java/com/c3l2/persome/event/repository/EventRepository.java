package com.c3l2.persome.event.repository;

import com.c3l2.persome.event.entity.Event;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface EventRepository extends JpaRepository<Event, Long> {
    List<Event> findAllByOrderByStartDateDesc();

    @Query("SELECT e FROM Event e LEFT JOIN FETCH e.eventImgs WHERE e.id = :id")
    Optional<Event> findByIdWithImages(@Param("id") Long id);
}
