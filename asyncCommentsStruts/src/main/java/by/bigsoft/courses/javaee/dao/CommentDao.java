package by.bigsoft.courses.javaee.dao;

import java.util.List;

import by.bigsoft.courses.javaee.model.Comment;

public interface CommentDao {
  public List getAllComments();
  public Comment getComment(Long id);
  public void insert(Comment comment);
}
