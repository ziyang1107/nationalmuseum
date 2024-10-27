package com.example.nationalmuseum.web.rest;

import com.example.nationalmuseum.model.Category;
import com.example.nationalmuseum.repository.CategoryRepository;
import com.example.nationalmuseum.service.dto.ResponseDTO;
import com.example.nationalmuseum.util.ResponseBuilder;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/categories")
public class CategoryResource {

    private final CategoryRepository categoryRepository;

    public CategoryResource(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @GetMapping
    public ResponseEntity<ResponseDTO<List<Category>>> getAllCategories() {
        List<Category> categories = categoryRepository.findAll();

        ResponseDTO<List<Category>> response = ResponseBuilder.generateResponse(
                "SUCCESS", "Categories fetched successfully", categories
        );

        return ResponseEntity.ok(response);
    }
}