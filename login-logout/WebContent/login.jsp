<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="lang" value="${not empty param.lang ? param.lang : not empty lang ? lang : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${lang}" />
<fmt:setBundle basename="org.login_logout.resource.Messages" />

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
  <c:if test="${not empty sessionScope['loginUser']}">
    <c:redirect url="index.jsp" />
  </c:if>

  <form>
    <select name="lang" onchange="this.form.submit()">
      <option value="en" ${lang == 'en' ? 'selected' : ''}>English</option>
      <option value="ru" ${lang == 'ru' ? 'selected' : ''}>Русский</option>
    </select>
  </form>

  <form action="loginAuthenticate.jsp" method="post">
    <p>
      <label for="user_login"><fmt:message key="login.label.username" />:</label>
      <input id="user_login" name="login" type="text">
    </p>
    <p>
      <label for="user_password"><fmt:message key="login.label.password" />:</label>
      <input id="user_password" name="password" type="password">
    </p>
    <p class="error">
      <c:if test="${not empty param.error}">
        <c:out value="${param.error}" />
      </c:if>
    </p>
    <p>
      <fmt:message key="login.button.submit" var="submitValue" />
      <input type="submit" value="${submitValue}">
    </p>
  </form>
</body>
</html>
