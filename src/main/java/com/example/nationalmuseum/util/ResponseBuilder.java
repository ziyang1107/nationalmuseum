package com.example.nationalmuseum.util;

import com.example.nationalmuseum.service.dto.ResponseDTO;
import org.springframework.data.domain.Page;

public class ResponseBuilder {
    public static <T> ResponseDTO<T> generatePaginatedResponse(
            String status, T data, Page<?> page) {
        ResponseDTO.MetaData metaData = new ResponseDTO.MetaData(
                page.getTotalElements(),
                page.getTotalPages(),
                page.getNumber(),
                page.getSize()
        );
        return new ResponseDTO<>(status, data, metaData);
    }

    public static <T> ResponseDTO<T> generateResponse(
            String status, String message, T data) {
        return new ResponseDTO<>(status, message, data);
    }
}