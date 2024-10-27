package com.example.nationalmuseum.repository;

import com.example.nationalmuseum.model.Activity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;
import java.util.List;

public interface ActivityRepository extends JpaRepository<Activity, Long> {
    @Query("SELECT a FROM Activity a " +
            "WHERE a.category.categoryId = :categoryId " +
            "AND a.dateTime = :dateTime")
    List<Activity> findByCategoryIdAndDateTime(
            @Param("categoryId") Long categoryId,
            @Param("dateTime") LocalDateTime dateTime
    );
}