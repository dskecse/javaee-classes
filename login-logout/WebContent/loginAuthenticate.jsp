<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <title>Authentication page</title>
  <meta charset="utf-8">
</head>
<body>
  <c:if test="${empty param.login or empty param.password}">
    <c:redirect url="login.jsp">
      <c:param name="error" value="Please enter login and password" />
    </c:redirect>
  </c:if>

  <c:if test="${not empty param.login and not empty param.password}">
    <c:set scope="session" var="loginUser" value="${param.login}" />
    <c:redirect url="index.jsp" />
  </c:if>
</body>
</html>
