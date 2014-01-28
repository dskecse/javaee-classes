package org.news.dal;

import java.util.List;

import org.news.dto.CommentDTO;
import org.news.dto.NewsDTO;
import org.news.exception.NewsPersistanceException;

public interface INewsDAO {
	public List<NewsDTO> getNews() throws NewsPersistanceException;

	public NewsDTO getNews(long newsId) throws NewsPersistanceException;

	public void addNews(NewsDTO news) throws NewsPersistanceException;

	public void delete(NewsDTO news) throws NewsPersistanceException;

	public void update(NewsDTO news) throws NewsPersistanceException;

	public List<CommentDTO> getComments(int newsId)
			throws NewsPersistanceException;

	public void addComment(CommentDTO comment) throws NewsPersistanceException;
}
