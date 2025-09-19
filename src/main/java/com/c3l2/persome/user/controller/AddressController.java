package com.c3l2.persome.user.controller;

import com.c3l2.persome.user.dto.AddressRequest;
import com.c3l2.persome.user.dto.AddressResponse;
import com.c3l2.persome.user.service.AddressService;
import com.c3l2.persome.common.ApiResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/users/{userId}/addresses")
@RequiredArgsConstructor
public class AddressController {

    private final AddressService addressService;

    /** 배송 조회 */
    @GetMapping
    public ResponseEntity<AddressResponse> getAddress(@PathVariable Long id){
        AddressResponse addressRequest = addressService.getAddress(id);
        return ResponseEntity.ok(addressRequest);  // 변수명을 일치시킴
    }

    /** 배송지 추가*/
    @PostMapping
    public ResponseEntity<AddressResponse> addToAddress(@PathVariable Long id, @RequestBody AddressRequest addressRequest) {
        AddressResponse savedAddress = addressService.addToAddress(id, addressRequest);
        return new ResponseEntity<>(savedAddress, HttpStatus.CREATED);
    }

    /** 배송지 수정 */
    @PatchMapping("/{addressId}")
    public ResponseEntity<ApiResponse<AddressResponse>> updateAddress(
            @PathVariable Long userId,
            @PathVariable Long addressId,
            @RequestBody AddressRequest request)
    {
        AddressResponse updated = addressService.updateAddress(userId, addressId, request);
        return ApiResponse.ok("배송지 수정 성공", updated);
    }

    /** 배송지 삭제 */
    @DeleteMapping("/{addressId}")
    public ResponseEntity<ApiResponse<Void>> deleteAddress(
            @PathVariable Long userId,
            @PathVariable Long addressId)
    {
        addressService.deleteAddress(userId, addressId);
        return ApiResponse.ok("배송지 삭제 성공", null);
    }
}