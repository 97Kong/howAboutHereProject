package com.cos.howabout.afterlist;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import com.cos.howabout.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data 
@Entity
public class AfterList {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; // 프라이머리키 (기본키)
	private String title; // varchar(255), 255는 글자수 //char 고정 varchar 가변
	@Lob // Long text의 어노테이션이다. 큰글자수를 넣을수있다. (jpa문법)
	private String content;
	
	// jpa (java Persistence API\
	@JoinColumn(name = "user_id") // 조인의 Foreign키의 이름을 바꾸는 어노테이션이다.(잡기술)
	@ManyToOne(fetch = FetchType.EAGER) //Foreign 키를 만드는 어노테이션이다 JPA기술 -> hibernate -> ORM 
	private com.cos.howabout.user.User user;  // ORM 사용
	
	
	@Override
	public String toString() {
		return "Post [id=" + id + ", title=" + title + ", content=" + content + ", user=" + user + "]";
	}

}
