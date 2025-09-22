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

    /** 배송 조회 (단건: 기본/최신 1건) */
    @GetMapping(params = "mode=single")
    public ResponseEntity<AddressResponse> getAddressSingle(@PathVariable("userId") Long userId){
        AddressResponse addressRequest = addressService.getAddress(userId);
        return ResponseEntity.ok(addressRequest);
    }

    /** 배송 조회 (다건) */
    @GetMapping
    public ResponseEntity<java.util.List<AddressResponse>> getAddresses(@PathVariable("userId") Long userId){
        return ResponseEntity.ok(addressService.getAddresses(userId));
    }

    /** 배송지 추가*/
    @PostMapping
    public ResponseEntity<AddressResponse> addToAddress(@PathVariable("userId") Long userId, @RequestBody AddressRequest addressRequest) {
        AddressResponse savedAddress = addressService.addToAddress(userId, addressRequest);
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
