<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
  <meta charset="utf-8">
</head>
<body>
  <p>
    <fmt:message key="index.greeting" />, <c:out value="${sessionScope['loginUser']}" />!
  </p>

  <%@ include file="header.jsp" %>
</body>
</html>
