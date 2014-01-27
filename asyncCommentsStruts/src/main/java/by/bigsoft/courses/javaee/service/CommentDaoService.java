package by.bigsoft.courses.javaee.service;

import java.util.List;

import by.bigsoft.courses.javaee.dao.CommentDao;
import by.bigsoft.courses.javaee.dao.CommentNoDBdao;
import by.bigsoft.courses.javaee.model.Comment;

public class CommentDaoService implements CommentService {

  private CommentDao dao;

  public CommentDaoService() {
    this.dao = new CommentNoDBdao();
  }

  public List getAllComments() {
    return dao.getAllComments();
  }

  public Comment getComment(Long id) {
    return dao.getComment(id);
  }

  public void insertComment(Comment comment) {
    dao.insert(comment);
  }
}
