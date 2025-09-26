package com.c3l2.persome.event.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/events")
@RequiredArgsConstructor
public class EventViewController {

    @GetMapping
    public String eventsPage() {
        return "event/events";
    }

    @GetMapping("/event-detail")
    public String eventDetailView() {
        return "event/event-detail";
    }
}
