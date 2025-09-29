package com.c3l2.persome.file;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@RestController
@RequestMapping("/api/files")
@RequiredArgsConstructor
public class FileUploadController {

    private final FileStorageService fileStorageService;

    // 단일 파일 업로드
    @PostMapping("/upload")
    public ResponseEntity<FileUploadResponseDto> uploadFile(
            @RequestParam("file") MultipartFile file
    ) {
        String url = fileStorageService.storeFile(file);
        return ResponseEntity.ok(new FileUploadResponseDto(url));
    }

    // 다중 파일 업로드
    @PostMapping("/upload/multiple")
    public ResponseEntity<List<FileUploadResponseDto>> uploadMultipleFiles(
            @RequestParam("files") List<MultipartFile> files
    ) {
        List<FileUploadResponseDto> urls = files.stream()
                .map(fileStorageService::storeFile)
                .map(FileUploadResponseDto::new)
                .toList();

        return ResponseEntity.ok(urls);
    }
}
