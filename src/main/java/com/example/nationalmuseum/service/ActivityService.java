package com.example.nationalmuseum.service;

import com.example.nationalmuseum.service.dto.ActivityDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.time.LocalDateTime;
import java.util.List;

public interface ActivityService {
    Page<ActivityDTO> findAll(Pageable pageable);

    List<ActivityDTO> findByCategoryAndDateTime(Long categoryId, LocalDateTime dateTime);
}