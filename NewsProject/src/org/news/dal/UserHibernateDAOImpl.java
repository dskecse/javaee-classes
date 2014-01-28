package org.news.dal;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.news.dto.UserDTO;
import org.news.entity.User;
import org.news.exception.NewsPersistanceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import static org.news.util.ServiceConverter.*;

@Repository
@Transactional
public class UserHibernateDAOImpl implements IUserDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public UserDTO getUser(String login, String password)
			throws NewsPersistanceException {
		User user = null;
		try {
			Query query = currentSession().createQuery(
					"FROM User where loginName=:ln and password = :pswd");
			query.setParameter("ln", login);
			query.setParameter("pswd", password);
			user = (User) query.uniqueResult();
		} catch (HibernateException e) {
			throw new NewsPersistanceException(e);
		}
		return convert(user);
	}

	private Session currentSession() {
		Session currentSession = sessionFactory.getCurrentSession();
		// Session currentSession = sessionFactory.openSession();
		return currentSession;
	}

}
