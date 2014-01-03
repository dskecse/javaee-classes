import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");

    String login    = request.getParameter("login");
    String password = request.getParameter("password");
    PrintWriter out = response.getWriter();

    if (!login.equals("") && !password.equals("")) {
      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("<head>");
      out.println("  <title>Welcome</title>");
      out.println("  <meta charset=\"utf-8\">");
      out.println("</head>");
      out.println("<body>");
      out.println("  Hello, " + login + "!");
      out.println("</body>");
      out.println("</html>");
      out.close();
    } else {
      request.getRequestDispatcher("/error.html").forward(request, response);
    }
  }
}
