package com.cos.howabout.afterlist;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AfterListRepository extends JpaRepository<AfterList,Integer>{

}
