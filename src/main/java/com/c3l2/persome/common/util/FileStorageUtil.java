package com.c3l2.persome.common.util;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Base64;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.PathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileStorageUtil {

    @Value("${file.upload.review-images:src/main/resources/static/uploads/review-images}")
    private String reviewImageUploadPath;

    @Value("${file.upload.event-images:src/main/resources/static/uploads/event-images}")
    private String eventImageUploadPath;

    public String saveReviewImage(MultipartFile file) throws IOException {
        return storeFile(file, reviewImageUploadPath, "uploads/review-images/");
    }

    public String saveEventImage(MultipartFile file) throws IOException {
        return storeFile(file, eventImageUploadPath, "uploads/event-images/");
    }

    /**
     * 리뷰 이미지를 Base64로 인코딩해서 반환
     * @param mediaUrl 이미지 파일의 상대 경로 (예: "uploads/review-images/filename.jpg")
     * @return Base64 인코딩된 이미지 데이터 (data URL 형식)
     */
    public String loadImageAsBase64(String mediaUrl) {
        try {
            String filename = mediaUrl.substring(mediaUrl.lastIndexOf('/') + 1);
            Path filePath = Paths.get(reviewImageUploadPath, filename);

            if (!Files.exists(filePath)) {
                return null;
            }

            byte[] fileContent = Files.readAllBytes(filePath);
            String mimeType = Files.probeContentType(filePath);
            if (mimeType == null) {
                String extension = filename.substring(filename.lastIndexOf('.') + 1).toLowerCase();
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
                        mimeType = "image/jpeg";
                }
            }

            String base64 = Base64.getEncoder().encodeToString(fileContent);
            return "data:" + mimeType + ";base64," + base64;

        } catch (IOException e) {
            return null;
        }
    }

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

    private String storeFile(MultipartFile file, String uploadPath, String webPathPrefix) throws IOException {
        if (file == null || file.isEmpty()) {
            throw new IllegalArgumentException("파일이 비어있습니다.");
        }

        Path uploadDir = Paths.get(uploadPath);
        if (!Files.exists(uploadDir)) {
            Files.createDirectories(uploadDir);
        }

        String originalFilename = file.getOriginalFilename();
        String extension = "";
        if (originalFilename != null && originalFilename.contains(".")) {
            extension = originalFilename.substring(originalFilename.lastIndexOf('.'));
        }

        String filename = UUID.randomUUID() + "_" +
                LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss")) + extension;

        Path filePath = uploadDir.resolve(filename);
        Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

        return webPathPrefix + filename;
    }
}
