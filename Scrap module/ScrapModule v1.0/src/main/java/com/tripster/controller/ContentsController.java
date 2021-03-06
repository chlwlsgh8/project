package com.tripster.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tripster.domain.ContentsVO;
import com.tripster.domain.ScrapVO;
import com.tripster.service.ContentsService;
import com.tripster.service.ScrapService;

@Controller
@RequestMapping("/contents/*")
public class ContentsController {
	
private static final Logger loger = LoggerFactory.getLogger(ScrapController.class);
	
	@Inject
	private ContentsService service;
	@Inject
	private ScrapService scrapService;
	
	@RequestMapping(value="/foody",method=RequestMethod.GET)
	public void foody(@RequestParam("Restaurant_ID") int Restaurant_ID,Model model) throws Exception {
		
		
		loger.info("foody page");
		ContentsVO vo = new ContentsVO();
		vo = service.read(Restaurant_ID);
		loger.info(vo.toString());
		model.addAttribute(vo);
		
	}
	
	@RequestMapping(value="/foody",method=RequestMethod.POST)
	public String scrap(@RequestParam("Restaurant_ID") int Restaurant_ID,Model model) throws Exception {
		
		ContentsVO cont = new ContentsVO();
		ScrapVO vo = new ScrapVO();
		cont = service.read(Restaurant_ID);
		vo.setScrapID(7);
		vo.setCodeID(cont.getCodeID());
		vo.setContentsID(cont.getID());
		vo.setContentsTitle(cont.getTitle());
		vo.setContentsPhoto(cont.getContents());
		
		scrapService.scrap(vo);
		
		loger.info("db추가 성공");
		return "redirect:/contents/foody?Restaurant_ID="+Restaurant_ID;
	}

}
