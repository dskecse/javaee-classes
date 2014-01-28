package org.news.service;

import java.util.List;

import org.news.exception.NewsServiceException;
import org.news.model.NewsModel;

public interface NewsService {
	public List<NewsModel> getNewsList() throws NewsServiceException;

	public void addNews(NewsModel news) throws NewsServiceException;

	public NewsModel getNews(int id) throws NewsServiceException;
}
