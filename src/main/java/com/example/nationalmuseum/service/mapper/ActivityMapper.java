package com.example.nationalmuseum.service.mapper;


import com.example.nationalmuseum.model.Activity;
import com.example.nationalmuseum.service.dto.ActivityDTO;

public class ActivityMapper {

    public static ActivityDTO toDTO(Activity activity) {
        ActivityDTO dto = new ActivityDTO();
        dto.setActivityId(activity.getActivityId());
        dto.setTitle(activity.getTitle());
        dto.setDescription(activity.getDescription());
        dto.setLocation(activity.getLocation());
        dto.setDateTime(activity.getDateTime());
        dto.setCategoryName(activity.getCategory().getCategoryName());

        if (activity.getImage() != null) {
            dto.setImageUrl(activity.getImage().getImageUrl());
        }

        if (activity.getParticipantLimit() == null) {
            dto.setParticipantLimit("Unlimited");
        } else {
            dto.setParticipantLimit(String.valueOf(activity.getParticipantLimit()));
        }

        return dto;
    }
}