package org.news.util;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.news.dto.NewsDTO;
import org.news.dto.UserDTO;
import org.news.entity.User;
import org.news.model.NewsModel;

public class ServiceConverter {

	public static NewsDTO convert(NewsModel news) {
		NewsDTO ret = new NewsDTO();
		try {
			BeanUtils.copyProperties(ret, news);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}

	public static NewsModel convert(NewsDTO news) {
		NewsModel ret = new NewsModel();
		try {
			BeanUtils.copyProperties(ret, news);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}

	public static List<NewsModel> convert(List<NewsDTO> list) {
		List<NewsModel> ret = new ArrayList<NewsModel>();
		for (NewsDTO news : list) {
			NewsModel model = convert(news);
			if (model != null) {
				ret.add(model);
			}
		}
		return ret;
	}

	public static UserDTO convert(User user) {
		UserDTO ret = new UserDTO();
		try {
			BeanUtils.copyProperties(ret, user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}

	public static User convert(UserDTO user) {
		User ret = new User();
		try {
			BeanUtils.copyProperties(ret, user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}
}
