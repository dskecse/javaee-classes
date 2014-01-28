package org.news.dal;

import org.news.dto.UserDTO;
import org.news.exception.NewsPersistanceException;

public interface IUserDAO {
	public UserDTO getUser(String login, String password)
			throws NewsPersistanceException;
}
