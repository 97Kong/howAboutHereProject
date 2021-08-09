package com.cos.howabout.rooms;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;



@Repository
public interface RoomsRepository extends JpaRepository<Rooms, Integer> {
 
	 @Query(value = "SELECT * FROM rooms", nativeQuery = true)
	    List<Rooms> mFindAll(int id);
}
