package com.cos.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.cos.blog.model.User;

// 자동으로 bean 등록이 된다.
//@Repository 생략 가능
public interface UserRepository extends JpaRepository<User, Integer>{
	User findByUsernameAndPassword(String username, String password);
}
