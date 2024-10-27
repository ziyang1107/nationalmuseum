package com.example.nationalmuseum.service.impl;

import com.example.nationalmuseum.repository.ActivityRepository;
import com.example.nationalmuseum.service.ActivityService;
import com.example.nationalmuseum.service.dto.ActivityDTO;
import com.example.nationalmuseum.service.mapper.ActivityMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ActivityServiceImpl implements ActivityService {

    private final ActivityRepository activityRepository;

    public ActivityServiceImpl(ActivityRepository activityRepository) {
        this.activityRepository = activityRepository;
    }

    @Override
    public Page<ActivityDTO> findAll(Pageable pageable) {
        return activityRepository.findAll(pageable)
                .map(ActivityMapper::toDTO);
    }

    @Override
    public List<ActivityDTO> findByCategoryAndDateTime(Long categoryId, LocalDateTime dateTime) {
        return activityRepository.findByCategoryIdAndDateTime(categoryId, dateTime)
                .stream()
                .map(ActivityMapper::toDTO)
                .collect(Collectors.toList());
    }
}