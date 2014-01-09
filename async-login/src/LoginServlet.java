import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    response.setContentType("text/plain");
    PrintWriter out = response.getWriter();

    String login = request.getParameter("login");

    try {
      if (!login.equals("")) {
        out.write("Hello, " + login + ".");
      } else {
        out.write("Enter your login please.");
      }
    } finally {
      out.close();
    }
  }
}
