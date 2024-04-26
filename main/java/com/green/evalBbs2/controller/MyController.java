package com.green.evalBbs2.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.evalBbs2.dao.IEvalBbsDao;


@Controller
public class MyController {
	@Autowired
	private IEvalBbsDao dao;
	
	@RequestMapping("/")
	public String root() {
		return "index";
	}
	
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("list", dao.listDao());
		return "list";
	}
	
	@RequestMapping("/writeForm")
	public String writeForm() {
		return "writeForm";
	}
	
	@RequestMapping("/write")
	public String write(Model model, HttpServletRequest request ) {
		dao.writeDao(request.getParameter("title"),
				request.getParameter("content"),
				request.getParameter("writer"),
				request.getParameter("regdate"));
		
		return "redirect:list";
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam("bno") String bno, Model model) {
		model.addAttribute("dto",dao.getDto(bno));
		
		return "detail";
		
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("bno") String bno) {
		dao.deleteDao(bno);
		
		return "redirect:list";
	}
	
}
