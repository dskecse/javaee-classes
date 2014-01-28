package org.news.dal;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.news.dto.CommentDTO;
import org.news.dto.NewsDTO;
import org.news.entity.News;
import org.news.exception.NewsPersistanceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import static org.news.util.StorageConverter.*;

@Repository
@Transactional
public class NewsHibernateDAOImpl implements INewsDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsDTO> getNews() throws NewsPersistanceException {
		try {
			return convert(currentSession().createQuery("From News").list());
		} catch (HibernateException e) {
			throw new NewsPersistanceException(e);
		}
	}

	@Override
	public NewsDTO getNews(long newsId) throws NewsPersistanceException {
		try {
			News nEntity = (News) currentSession().get(News.class, newsId);
			return convert(nEntity);
		} catch (HibernateException e) {
			throw new NewsPersistanceException(e);
		}
	}

	@Override
	public void addNews(NewsDTO news) throws NewsPersistanceException {
		try {
			currentSession().save(convert(news));
		} catch (HibernateException e) {
			throw new NewsPersistanceException(e);
		}
	}

	@Override
	public void delete(NewsDTO news) throws NewsPersistanceException {
		try {
			currentSession().delete(news);
		} catch (HibernateException e) {
			throw new NewsPersistanceException(e);
		}
	}

	@Override
	public void update(NewsDTO news) throws NewsPersistanceException {
		try {
			currentSession().update(news);
		} catch (HibernateException e) {
			throw new NewsPersistanceException(e);
		}
	}

	@Override
	public List<CommentDTO> getComments(int newsId)
			throws NewsPersistanceException {
		try {
			return currentSession().createQuery(
					"From Comment where NEWS_ID = " + newsId).list();
		} catch (HibernateException e) {
			throw new NewsPersistanceException(e);
		}
	}

	@Override
	public void addComment(CommentDTO comment) throws NewsPersistanceException {
		try {
			currentSession().save(comment);
		} catch (HibernateException e) {
			throw new NewsPersistanceException(e);
		}
	}

	private Session currentSession() {
		Session currentSession = sessionFactory.getCurrentSession();
		// Session currentSession = sessionFactory.openSession();
		return currentSession;
	}

}
