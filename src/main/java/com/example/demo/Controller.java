package com.example.demo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.DAO.UserDAO;
import com.example.demo.DTO.UserDTO;

@org.springframework.stereotype.Controller

public class Controller {
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	UserDAO dao;
	
	@RequestMapping("/")  
	public String main() {
		return "mainForm"; 
	}
//************************************************************
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "security/loginForm"; 		
	}
	@RequestMapping("/newuser")
	public String newuser() {
		return "security/newuser";		
	}
	@RequestMapping("/usersave")
	public String userSave(HttpServletRequest req,UserDTO dto) {
		String name = req.getParameter("name");
		
		List<UserDTO> list = dao.loginok(name);
		if(list.size() == 0) {
			dao.save(dto);
			return "security/loginForm";
		}else {
			return "security/newusererror";
		}
	}
//************************************************************
	@RequestMapping("Snake")
	public String Snake() {
		return "Snake";
	}
	@RequestMapping("HowSnake_1")
	public String HowSnake_1() {
		return "HowSnake_1";
	}
	@RequestMapping("HowSnake_2")
	public String HowSnake_2() {
		return "HowSnake_2";
	}
	@RequestMapping("HowSnake_3")
	public String HowSnake_3() {
		return "HowSnake_3";
	}
	@RequestMapping("Snakesave")
	public String Snakesave(UserDTO dto) {
			dao.Snakescore(dto);
			dao.Snakedelete();
		return "Snake";
	}
	@RequestMapping("Snakerank")
	public String Snakelist(Model model) {
		List<UserDTO> carrier = dao.SnakerankList();
		
		model.addAttribute("carrier",carrier);
		
		return "Snakerank";
	}
//************************************************************
	@RequestMapping("JetPack")
	public String JetPack() {
		return "JetPack";
	}
	@RequestMapping("HowJetPack_1")
	public String HowJetPack_1() {
		return "HowJetPack_1";
	}
	@RequestMapping("HowJetPack_2")
	public String HowJetPack_2() {
		return "HowJetPack_2";
	}
	@RequestMapping("HowJetPack_3")
	public String HowJetPack_3() {
		return "HowJetPack_3";
	}
	@RequestMapping("JetPacksave")
	public String JetPacksave(UserDTO dto) {
			dao.JetPackscore(dto);
			dao.JetPackdelete();
		return "JetPack";
	}
	@RequestMapping("JetPackrank")
	public String JetPacklist(Model model) {
		List<UserDTO> carrier = dao.JetPackrankList();
		
		model.addAttribute("carrier",carrier);
		
		return "JetPackrank";
	}
//************************************************************
	@RequestMapping("Block")
	public String Block() {
		return "Block";
	}
	@RequestMapping("HowBlock_1")
	public String HowBlcok_1() {
		return "HowBlock_1";
	}
	@RequestMapping("HowBlock_2")
	public String HowBlcok_2() {
		return "HowBlock_2";
	}
	@RequestMapping("HowBlock_3")
	public String HowBlcok_3() {
		return "HowBlock_3";
	}
	@RequestMapping("Blocksave")
	public String Blocksave(UserDTO dto) {
			dao.Blockscore(dto);
			dao.Blockdelete();
		return "Block";
	}
	@RequestMapping("Blockrank")
	public String Blocklist(Model model) {
		List<UserDTO> carrier = dao.BlockrankList();
		
		model.addAttribute("carrier",carrier);
		
		return "Blockrank";
	}
	
}
