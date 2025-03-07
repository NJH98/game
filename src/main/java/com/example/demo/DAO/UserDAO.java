package com.example.demo.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.demo.DTO.UserDTO;

@Repository
public class UserDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	//*************************************************************
		// user 데이터베이스에 해당 계정이 있는지 확인하기
	public List<UserDTO> loginok(String name){
		String sql = "select * from user_list where name=?";
		UserDTO dto = new UserDTO();
		List<UserDTO> list = new ArrayList();
		 
		list = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserDTO>(UserDTO.class),name);
		return list;
	}
	
		public void save(UserDTO dto) {
			String sql = "insert into user_list values (?,?,'ROLE_USER',1)";
			jdbcTemplate.update(sql, dto.getName(), dto.getPassword());
		}
		
		//<SNAKE 관련 DAO
	//*************************************************************	
		public void Snakescore(UserDTO dto) {
			String sql = "insert into Snakerank values(?,?)";
			jdbcTemplate.update(sql, dto.getName(), dto.getScore());
		}
		public List<UserDTO> SnakerankList(){
			List<UserDTO> carrier = new ArrayList<UserDTO>();
			String sql = "select * from Snakerank order by score DESC limit 10";
			
			carrier = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserDTO>(UserDTO.class));
			
			return carrier;
		}
		public void Snakedelete(){
			String sql = "delete from Snakerank where score ="
					+ "(select score from "
					+ "(select score from Snakerank order by score desc limit 10,1)as temp);";
			jdbcTemplate.update(sql);
		}
		
		
		//<JetPack 관련 DAO
		//*************************************************************	
			public void JetPackscore(UserDTO dto) {
				String sql = "insert into JetPackrank values(?,?)";
				jdbcTemplate.update(sql, dto.getName(), dto.getScore());
			}
			public List<UserDTO> JetPackrankList(){
				List<UserDTO> carrier = new ArrayList<UserDTO>();
				String sql = "select * from JetPackrank order by score DESC limit 10";
				
				carrier = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserDTO>(UserDTO.class));
				
				return carrier;
			}
			public void JetPackdelete(){
				String sql = "delete from JetPackrank where score ="
						+ "(select score from "
						+ "(select score from JetPackrank order by score desc limit 10,1)as temp);";
				jdbcTemplate.update(sql);
			}
			
			
			//<Block 관련 DAO
			//*************************************************************	
				public void Blockscore(UserDTO dto) {
					String sql = "insert into Blockrank values(?,?)";
					jdbcTemplate.update(sql, dto.getName(), dto.getScore());
				}
				public List<UserDTO> BlockrankList(){
					List<UserDTO> carrier = new ArrayList<UserDTO>();
					String sql = "select * from Blockrank order by score DESC limit 10";
					
					carrier = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserDTO>(UserDTO.class));
					
					return carrier;
				}
				public void Blockdelete(){
					String sql = "delete from Blockrank where score ="
							+ "(select score from "
							+ "(select score from Blockrank order by score desc limit 10,1)as temp);";
					jdbcTemplate.update(sql);
				}
}
