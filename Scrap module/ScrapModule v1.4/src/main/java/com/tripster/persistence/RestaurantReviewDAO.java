package com.tripster.persistence;

import java.util.List;

import com.tripster.domain.Criteria;
import com.tripster.domain.RestaurantReviewVO;

public interface RestaurantReviewDAO {
	//맛집 리뷰 작성
	public void write(RestaurantReviewVO vo) throws Exception;
	
	//맛집 리뷰 수정
	public void modify(RestaurantReviewVO vo) throws Exception;
	
	//맛집 리뷰 삭제
	public void delete(Integer reviewID) throws Exception;
	
	//특정 맛집의 리뷰 목록 조회
	public List<RestaurantReviewVO> getRestaurantReviewList(Integer restaurantID, Criteria cri) throws Exception;
	
	//특정 맛집의 리뷰 개수 조회
	public int getTotalRestaurantReviewNum(Integer restaurantID) throws Exception;
	//검색 구현 시 추가
}
