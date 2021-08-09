package com.cos.howabout.rest;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface RestRepository extends JpaRepository<Rest, Integer> {

    @Query(value = "SELECT * FROM rest", nativeQuery = true)
    List<Rest> mFindAll(int id);
  
    @Query(value = "SELECT * FROM rest WHERE name like  '%모텔' ", nativeQuery = true)
    List<Rest> mFindMotel(String name);

    @Query(value = "SELECT * FROM rest WHERE name like  '%호텔' ", nativeQuery = true)
    List<Rest> mFindhotel(String name);
    
    @Query(value = "SELECT * FROM rest WHERE name like  '%리조트' ", nativeQuery = true)
    List<Rest> mFindresort(String name);
}
