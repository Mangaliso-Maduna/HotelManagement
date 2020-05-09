package com.Hotel.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Hotel.model.ReviewsModel;

public interface ReviewsDAO extends JpaRepository<ReviewsModel, Integer>{

}
