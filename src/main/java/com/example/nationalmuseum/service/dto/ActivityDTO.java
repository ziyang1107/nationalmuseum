package com.example.nationalmuseum.service.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ActivityDTO {
    private Long activityId;
    private String title;
    private String description;
    private String location;
    private String participantLimit;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss")
    private LocalDateTime dateTime;
    private String categoryName;
    private String imageUrl;
}