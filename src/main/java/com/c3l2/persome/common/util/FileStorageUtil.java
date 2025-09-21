package com.c3l2.persome.common.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.PathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Base64;
import java.util.UUID;

@Component
public class FileStorageUtil {

    @Value("${file.upload.review-images:src/main/resources/static/uploads/review-images}")
    private String reviewImageUploadPath;

    public String saveReviewImage(MultipartFile file) throws IOException {
        if (file.isEmpty()) {
            throw new IllegalArgumentException("파일이 비어있습니다.");
        }

        // 업로드 디렉토리 생성
        Path uploadDir = Paths.get(reviewImageUploadPath);
        if (!Files.exists(uploadDir)) {
            Files.createDirectories(uploadDir);
        }

        // 파일명 생성 (UUID + 현재시간 + 원본파일명)
        String originalFilename = file.getOriginalFilename();
        String extension = originalFilename != null ? 
            originalFilename.substring(originalFilename.lastIndexOf(".")) : "";
        
        String filename = UUID.randomUUID().toString() + 
            "_" + LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss")) + 
            extension;

        // 파일 저장
        Path filePath = uploadDir.resolve(filename);
        Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

        // 저장된 파일의 상대 경로 반환
        return "uploads/review-images/" + filename;
    }

    /**
     * 리뷰 이미지를 Base64로 인코딩해서 반환
     * @param mediaUrl 이미지 파일의 상대 경로 (예: "uploads/review-images/filename.jpg")
     * @return Base64 인코딩된 이미지 데이터 (data URL 형식)
     */
    public String loadImageAsBase64(String mediaUrl) {
        try {
            // mediaUrl에서 파일명 추출
            String filename = mediaUrl.substring(mediaUrl.lastIndexOf("/") + 1);
            Path filePath = Paths.get(reviewImageUploadPath, filename);
            
            if (!Files.exists(filePath)) {
                return null; // 파일이 존재하지 않으면 null 반환
            }
            
            // 파일을 바이트 배열로 읽기
            byte[] fileContent = Files.readAllBytes(filePath);
            
            // MIME 타입 추측
            String mimeType = Files.probeContentType(filePath);
            if (mimeType == null) {
                // 확장자로 MIME 타입 추측
                String extension = filename.substring(filename.lastIndexOf(".") + 1).toLowerCase();
                switch (extension) {
                    case "jpg":
                    case "jpeg":
                        mimeType = "image/jpeg";
                        break;
                    case "png":
                        mimeType = "image/png";
                        break;
                    case "gif":
                        mimeType = "image/gif";
                        break;
                    default:
                        mimeType = "image/jpeg"; // 기본값
                }
            }
            
            // Base64 인코딩하여 data URL 형식으로 반환
            String base64 = Base64.getEncoder().encodeToString(fileContent);
            return "data:" + mimeType + ";base64," + base64;
            
        } catch (IOException e) {
            // 오류 발생 시 null 반환
            return null;
        }
    }

    /**
     * 이미지 파일을 Resource로 로드
     * @param filename 이미지 파일명
     * @return Resource 객체
     */
    public Resource loadImageAsResource(String filename) {
        try {
            Path filePath = Paths.get(reviewImageUploadPath, filename);
            
            if (!Files.exists(filePath)) {
                return null;
            }
            
            Resource resource = new PathResource(filePath);
            return resource.exists() ? resource : null;
            
        } catch (Exception e) {
            return null;
        }
    }
}