<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="lang" value="${not empty param.lang ? param.lang : not empty lang ? lang : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${lang}" />
<fmt:setBundle basename="org.login_logout.resource.Messages" />

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
