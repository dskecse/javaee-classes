package by.bigsoft.courses.javaee.service;

import java.util.List;

import by.bigsoft.courses.javaee.model.Comment;

public interface CommentService {
  public List getAllComments();
  public Comment getComment(Long id);
  public void insertComment(Comment comment);
}
