package com.example.image.controller;

import com.example.image.service.S3UploaderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * created by jg 2021/05/03
 */
@RequiredArgsConstructor
@RestController
@Api(tags = "Users")
public class HelloController {

    private final S3UploaderService s3Uploader;

    @PostMapping("/images")
    public String upload(@RequestParam("images") MultipartFile multipartFile) throws IOException {
        s3Uploader.upload(multipartFile, "images/origin");
        return "test";
    }

    @ApiOperation(value = "안녕")
    @GetMapping("/api/v2")
    public String test() {
        return "test";
    }
}
