package com.green.evalBbs2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
