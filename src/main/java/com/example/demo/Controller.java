package com.example.demo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.DAO.UserDAO;
import com.example.demo.DTO.UserDTO;

@org.springframework.stereotype.Controller

public class Controller {

	@Autowired					// DAO에서 만든 sql 구문 사용하기 위함
	UserDAO dao;
	
	@RequestMapping("/")  
	public String main() {
		return "security/hole"; 
	}
//************************************************************
	@RequestMapping("/login")
	public String login() {
		return "security/login"; 		
	}

	// @RequestMapping("/usersave")										// web에서 /usersave 사용시
	// public String userSave(HttpServletRequest req,UserDTO dto) {
	// 	String name = req.getParameter("name");							// web에서 name값 받아오기

	// 	List<UserDTO> list = dao.loginok(name);							// 받아온 name값을 사용해서 dao 사용
	// 	if(list.size() == 0) {
	// 		dao.save(dto);
	// 		return "security/loginForm";
	// 	}else {
	// 		return "security/newusererror";
	// 	}
	// }
//************************************************************
	// @RequestMapping("Snake")
	// public String Snake() {
	// 	return "Snake";
	// }

	// @RequestMapping("Snakesave")
	// public String Snakesave(UserDTO dto) {
	// 		dao.Snakescore(dto);
	// 		dao.Snakedelete();
	// 	return "Snake";
	// }
	// @RequestMapping("Snakerank")
	// public String Snakelist(Model model) {
	// 	List<UserDTO> carrier = dao.SnakerankList();
		
	// 	model.addAttribute("carrier",carrier);
		
	// 	return "Snakerank";
	// }
}
