package by.bigsoft.courses.javaee.action;

import java.util.List;

import by.bigsoft.courses.javaee.model.Comment;
import by.bigsoft.courses.javaee.service.CommentDaoService;
import by.bigsoft.courses.javaee.service.CommentService;
import com.opensymphony.xwork2.ActionSupport;

public class CommentAction extends ActionSupport {

  private Comment comment;
  private List comments;

  private CommentService commService = new CommentDaoService();

  public String execute() throws Exception {
    return SUCCESS;
  }

  public String save() {
    if (comment.getId() == null) {
      commService.insertComment(comment);
    }
    return SUCCESS;
  }

  public String list() {
    comments = commService.getAllComments();
    return SUCCESS;
  }

  public String input() {
    return INPUT;
  }

  public Comment getComment() {
    return comment;
  }

  public void setComment(Comment comment) {
    this.comment = comment;
  }

  public List getComments() {
    return comments;
  }
}
