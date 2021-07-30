package com.cos.howabout.user;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.cos.howabout.afterlist.AfterList;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data 
@Entity
// 그 세상에 맞게 변화하는것 modeling
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; // 프라이머리키 (기본키)
	
	@Column(unique = true, length = 20)
	private String username;
	private String password;
	private String email;
	private String address;
	
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", address=" + address +  "]";
	}
	//Foreign키가 만들어질수없다. ManyToOne , OneToMany (양방향 Mapping) 조인을 알아서해준다.
	// 걸어줘야하는 이유 밑에 설명 
	@JsonIgnoreProperties({"user","title"}) // @JsonIgnoreProperties이것을 쓰는 이유는 OneToMany의 무한반복을막아준다. 뺴고싶은부분은 ({})의부분에 넣어준다.
	@OneToMany(mappedBy = "user") // 1. mappedBy = "user" -> 이 의미는 User 클래스의 변수가현재 user user는 Foreign키를 만들지말라라는 의미
	private List<AfterList>posts;				//
	
}
