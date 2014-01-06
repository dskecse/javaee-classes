<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <title>Logged out</title>
  <meta charset="utf-8">
</head>
<body>
  <%
    session.invalidate();
    response.sendRedirect(request.getContextPath() + "/login.jsp");
  %>
</body>
</html>
