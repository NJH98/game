package com.example.demo.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.demo.DTO.UserDTO;

@Repository
public class UserDAO {		//필요한 sql문 DAO에서 작성에서 사용
	
	// @Autowired
	// JdbcTemplate jdbcTemplate;
	// //*************************************************************
	// 	// user 데이터베이스에 해당 계정이 있는지 확인하기
	// public List<UserDTO> loginok(String name){
	// 	String sql = "select * from user_list where name=?";		// name으로 받아온 이름으로 데이터베이스 where 검색
	// 	UserDTO dto = new UserDTO();								// 검색결과 0 or 1 즉 없다 or 있다 의미로 결과 받기
	// 	List<UserDTO> list = new ArrayList();						// 해당하는 결과를 배열을 생성하여 배열에 삽입
		 
	// 	list = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserDTO>(UserDTO.class),name);
	// 	return list;												// 삽입된 값을 리턴  즉 중복일경우 1이 나오고 아닐경우 0이 나옴
	// }
	
		// 데이터베이스에 새로운 계정 등록
	// 	public void save(UserDTO dto) {	
	// 		String sql = "insert into user_list values (?,?,'ROLE_USER',1)";	// sql 문으로 db에 추가하기
	// 		jdbcTemplate.update(sql, dto.getName(), dto.getPassword());			// dto로 받아온 이름과 비밀번호
	// 	}
		
	// 	//<SNAKE 관련 DAO
	// //*************************************************************	
	// 	public void Snakescore(UserDTO dto) {							// 받아온 dto값 insert
	// 		String sql = "insert into Snakerank values(?,?)";
	// 		jdbcTemplate.update(sql, dto.getName(), dto.getScore());
	// 	}
	// 	public List<UserDTO> SnakerankList(){							// db값을 내림차 순으로 10개 정렬
	// 		List<UserDTO> carrier = new ArrayList<UserDTO>();
	// 		String sql = "select * from Snakerank order by score DESC limit 10";
			
	// 		carrier = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserDTO>(UserDTO.class));
			
	// 		return carrier;
	// 	}
	// 	public void Snakedelete(){										// 상위 10개 의 점수에 도달하지 않을경우 db에서 삭제
	// 		String sql = "delete from Snakerank where score ="
	// 				+ "(select score from "
	// 				+ "(select score from Snakerank order by score desc limit 10,1)as temp);";
	// 		jdbcTemplate.update(sql);
	// 	}
}
