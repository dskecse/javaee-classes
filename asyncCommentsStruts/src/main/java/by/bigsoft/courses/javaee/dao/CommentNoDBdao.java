package by.bigsoft.courses.javaee.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import by.bigsoft.courses.javaee.model.Comment;

public class CommentNoDBdao implements CommentDao {
  private static ArrayList comments;

  static {
    comments = new ArrayList();
    comments.add(new Comment(new Long(1), "John Doe",  "Some contents."));
    comments.add(new Comment(new Long(2), "Bob Smith", "One more comment."));
  }

  public List getAllComments() {
    return comments;
  }

  public Comment getComment(Long id) {
    Comment comment = null;
    Iterator iter = comments.iterator();
    while (iter.hasNext()) {
      comment = (Comment) iter.next();
      if (comment.getId().equals(id)) {
        break;
      }
    }
    return comment;
  }

  public void insert(Comment comment) {
    int lastId = 0;
    Iterator iter = comments.iterator();
    while (iter.hasNext()) {
      Comment temp = (Comment) iter.next();
      if (temp.getId() > lastId) {
        lastId = temp.getId().intValue();
      }
    }
    // comm.setDepartment((Department)departmentsMap.get(comm.getDepartment().getDepartmentId()));
    comment.setId(new Long(lastId + 1));
    comments.add(comment);
  }
}
