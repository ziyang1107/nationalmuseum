package com.example.nationalmuseum.service.dto;

import lombok.Data;

@Data
public class ResponseDTO<T> {
    private String status;
    private T data;
    private MetaData meta;
    private String message;

    public ResponseDTO(String status, T data, MetaData meta) {
        this.status = status;
        this.data = data;
        this.meta = meta;
    }

    public ResponseDTO(String status, String message, T data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }

    @Data
    public static class MetaData {
        private long totalElements;
        private int totalPages;
        private int currentPage;
        private int size;

        public MetaData(long totalElements, int totalPages, int currentPage, int size) {
            this.totalElements = totalElements;
            this.totalPages = totalPages;
            this.currentPage = currentPage;
            this.size = size;
        }
    }
}