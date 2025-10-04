package com.c3l2.persome.admin.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
@PreAuthorize("hasRole('ADMIN')")
public class AdminViewController {

    @GetMapping("/admin")
    public String adminRoot() {
        return "redirect:/admin/console/users";
    }

    @GetMapping("/admin/console")
    public String adminConsoleRoot() {
        return "redirect:/admin/console/users";
    }

    @GetMapping("/admin/console/users")
    public String usersPage() {
        return "admin/users";
    }

    @GetMapping("/admin/console/products")
    public String productsPage() {
        return "admin/products";
    }

    @GetMapping("/admin/console/inventories")
    public String inventoriesPage() {
        return "admin/inventories";
    }

    @GetMapping("/admin/console/orders")
    public String ordersPage() {
        return "admin/orders";
    }

    @GetMapping("/admin/console/events")
    public String eventsPage() {
        return "admin/events";
    }

    @GetMapping("/admin/console/promotions")
    public String promotionsPage() {
        return "admin/promotions";
    }

    @GetMapping("/admin/console/coupons")
    public String couponsPage() {
        return "admin/coupons";
    }
}
