package org.news.service;

import java.util.Date;
import java.util.List;

import org.news.dal.INewsDAO;
import org.news.exception.NewsPersistanceException;
import org.news.exception.NewsServiceException;
import org.news.model.NewsModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import static org.news.util.ServiceConverter.*;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private INewsDAO storage;

	@Override
	public List<NewsModel> getNewsList() throws NewsServiceException {
		List<NewsModel> newsList = null;
		try {
			newsList = convert(storage.getNews());
		} catch (NewsPersistanceException e) {
			throw new NewsServiceException(e);
		}
		return newsList;
	}

	public void setStorage(INewsDAO storage) {
		this.storage = storage;
	}

	@Override
	public void addNews(NewsModel news) throws NewsServiceException {
		news.setCreated(new Date());
		news.setLastModified(new Date());
		try {
			storage.addNews(convert(news));
		} catch (NewsPersistanceException e) {
			throw new NewsServiceException(e);
		}
	}

	@Override
	public NewsModel getNews(int id) throws NewsServiceException {
		try {
			return convert(storage.getNews(id));
		} catch (NewsPersistanceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
