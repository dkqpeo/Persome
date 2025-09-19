package com.c3l2.persome.user.controller;

import com.c3l2.persome.user.dto.JOJOAddressRequest;
import com.c3l2.persome.user.dto.JOJOAddressResponse;
import com.c3l2.persome.user.service.JOJOAddressService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/users/{id}/addresses")
@RequiredArgsConstructor
public class JOJOUserController {

    private final JOJOAddressService JOJOaddressService;
    // 배송 조회
    @GetMapping
    public ResponseEntity<JOJOAddressResponse> getAddress(@PathVariable Long id){
        JOJOAddressResponse joJOAddressRequest = JOJOaddressService.getAddress(id);
        return ResponseEntity.ok(joJOAddressRequest);  // 변수명을 일치시킴
    }

    // 배송지 추가
    @PostMapping
    public ResponseEntity<JOJOAddressResponse> addToAddress(@PathVariable Long id, @RequestBody JOJOAddressRequest joJOAddressRequest) {
        JOJOAddressResponse savedAddress = JOJOaddressService.addToAddress(id, joJOAddressRequest);
        return new ResponseEntity<>(savedAddress, HttpStatus.CREATED);
    }
}