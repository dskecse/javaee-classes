package org.news.controller;

import javax.validation.Valid;

import org.news.exception.NewsServiceException;
import org.news.model.NewsModel;
import org.news.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController {

	@Autowired
	private NewsService service;
	
	@Autowired
	private NewsValidator validator;

	@RequestMapping("/list")
	public String getNewsList(Model model) {
		try {
			model.addAttribute("newsList", service.getNewsList());
		} catch (NewsServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "list";
	}

	@RequestMapping(value = "news/add", method=RequestMethod.POST)
	public String addNews(@Valid @ModelAttribute NewsModel newsModel, BindingResult result) {
		//validator.validate(newsModel, result);

		if (result.hasErrors()) {
			return "add";
		}
		
		try {
			service.addNews(newsModel);
		} catch (NewsServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "add";
		}

		return "forward:/list";
	}
	
	@RequestMapping(value="news/view/{id}")	
	public String viewNews(@PathVariable int id, Model model){
		try {
			NewsModel news = service.getNews(id);
			model.addAttribute("news", news);
		} catch (NewsServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "view";
	}
	
	@RequestMapping(value = "news/add/page", method=RequestMethod.GET)
	public String addPage() {
		return "add";
	}

	public void setService(NewsService service) {
		this.service = service;
	}
	
	@ModelAttribute("newsModel")
	public NewsModel populateUser() {
		return new NewsModel();
	}
}
