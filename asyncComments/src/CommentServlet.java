import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/comment")
public class CommentServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    response.setContentType("text/plain");
    PrintWriter out = response.getWriter();

    String author = request.getParameter("author");
    String msg    = request.getParameter("msg");

    try {
      if (!author.equals("") && !msg.equals("")) {
        out.write("success");
      } else if (author.equals("") && !msg.equals("")) {
        out.write("Author cannot be blank.");
      } else {
        out.write("Cannot add an empty comment.");
      }
    } finally {
      out.close();
    }
  }
}
