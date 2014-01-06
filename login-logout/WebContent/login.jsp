<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <title>Log in to app</title>
  <meta charset="utf-8">
  <style type="text/css">
    .error { color: red; font-size: 80%; }
  </style>
</head>
<body>
  <form action="loginAuthenticate.jsp" method="post">
    <p>
      <label for="user_login">Login:</label>
      <input id="user_login" name="login" type="text">
    </p>
    <p>
      <label for="user_password">Password:</label>
      <input id="user_password" name="password" type="password">
    </p>
    <p class="error">
      <c:if test="${not empty param.error}">
        <c:out value="${param.error}" />
      </c:if>
    </p>
    <p>
      <input type="submit" value="login">
    </p>
  </form>
</body>
</html>
