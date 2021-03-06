package com.tripster.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tripster.domain.ScrapVO;
import com.tripster.service.ScrapService;

@Controller
@RequestMapping("/contents/*")
public class ScrapController {
	
	private static final Logger loger = LoggerFactory.getLogger(ScrapController.class);
	
	@Inject
	private ScrapService service;
	
	@RequestMapping(value="/scrap",method=RequestMethod.GET)
	public String registerGET(ScrapVO board,Model model) throws Exception {
		
		loger.info("loger test");
		return "contents/scrap";
		
	}
	
	@RequestMapping(value="/scrap",method=RequestMethod.POST)
	public String registerPOST(ScrapVO scrap,Model model) throws Exception {
		
		service.scrap(scrap);
		
		return "/contents/success";
	}

}
