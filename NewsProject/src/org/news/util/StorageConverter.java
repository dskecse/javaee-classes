package org.news.util;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.news.dto.CommentDTO;
import org.news.dto.NewsDTO;
import org.news.entity.Comment;
import org.news.entity.News;

public class StorageConverter {

	public static News convert(NewsDTO news) {
		News ret = new News();
		try {
			BeanUtils.copyProperties(ret, news);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	public static NewsDTO convert(News news) {
		NewsDTO ret = new NewsDTO();
		try {
			BeanUtils.copyProperties(ret, news);

			List<CommentDTO> comments = new ArrayList<CommentDTO>();
			for (Comment comment : news.getComments()) {
				CommentDTO obj = convert(comment);
				if (obj != null) {
					comments.add(obj);
				}
			}
			ret.setComments(comments);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	public static CommentDTO convert(Comment comment) {
		CommentDTO ret = new CommentDTO();
		try {
			BeanUtils.copyProperties(ret, comment);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	public static Comment convert(CommentDTO comment) {
		Comment ret = new Comment();
		try {
			BeanUtils.copyProperties(ret, comment);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	public static List<NewsDTO> convert(List<News> list) {
		List<NewsDTO> ret = new ArrayList<NewsDTO>();
		for (News news : list) {
			NewsDTO model = convert(news);
			if (model != null) {
				ret.add(model);
			}
		}
		return ret;
	}

}
