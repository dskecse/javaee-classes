<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
  <meta charset="utf-8">
</head>
<body>
  <p>
    Hello, <c:out value="${sessionScope['loginUser']}" />!
  </p>

  <%@ include file="header.jsp" %>
</body>
</html>
