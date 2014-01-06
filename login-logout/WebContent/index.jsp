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
  <c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="login.jsp" />
  </c:if>

  <p>
    <fmt:message key="index.greeting" />, <c:out value="${sessionScope['loginUser']}" />!
  </p>

  <form action="logout.jsp" method="post">
    <button type="submit">
      <fmt:message key="index.button.logout" />
    </button>
  </form>
</body>
</html>
