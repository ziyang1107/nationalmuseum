package com.example.nationalmuseum.web.rest;


import com.example.nationalmuseum.model.Activity;
import com.example.nationalmuseum.model.Category;
import com.example.nationalmuseum.repository.ActivityRepository;
import com.example.nationalmuseum.repository.CategoryRepository;
import com.example.nationalmuseum.service.ActivityService;
import com.example.nationalmuseum.service.dto.ActivityDTO;
import com.example.nationalmuseum.service.dto.ResponseDTO;
import com.example.nationalmuseum.util.ResponseBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springdoc.core.annotations.ParameterObject;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/activities")
@CrossOrigin(origins = "*")
public class ActivityResource {

    private final ActivityService activityService;

    private final ActivityRepository activityRepository;
    private final CategoryRepository categoryRepository;

    public ActivityResource(ActivityService activityService, ActivityRepository activityRepository, CategoryRepository categoryRepository) {
        this.activityService = activityService;
        this.activityRepository = activityRepository;
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("")
    public ResponseEntity<ResponseDTO<?>> getAllActivities(@ParameterObject Pageable pageable) {
        Page<ActivityDTO> page = activityService.findAll(pageable);
        return ResponseEntity.ok(
                ResponseBuilder.generatePaginatedResponse("SUCCESS", page.getContent(), page)
        );
    }

    @GetMapping("/filter/{categoryName}/{dateTime}")
    public ResponseEntity<ResponseDTO<List<Activity>>> filterActivities(
            @PathVariable String categoryName,
            @PathVariable String dateTime) {

        LocalDateTime parsedDateTime = LocalDateTime.parse(dateTime);

        Optional<Long> categoryIdOpt = categoryRepository.findByCategoryName(categoryName)
                .map(Category::getCategoryId);

        if (categoryIdOpt.isEmpty()) {
            return ResponseEntity.badRequest().body(
                    ResponseBuilder.generateResponse("ERROR", "Category not found", null)
            );
        }

        Long categoryId = categoryIdOpt.get();

        List<Activity> activities = activityRepository.findByCategoryIdAndDateTime(categoryId, parsedDateTime);

        return ResponseEntity.ok(
                ResponseBuilder.generateResponse("SUCCESS", "Activities fetched successfully", activities)
        );
    }
}