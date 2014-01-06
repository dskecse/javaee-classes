<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="lang" value="${not empty param.lang ? param.lang : not empty lang ? lang : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${lang}" />
<fmt:setBundle basename="org.login_logout.resource.Messages" />

<c:if test="${empty param.login or empty param.password}">
  <c:redirect url="login.jsp">
    <fmt:message key="login.auth.error" var="errorMsg" />
    <c:param name="error" value="${errorMsg}" />
  </c:redirect>
</c:if>

<c:if test="${not empty param.login and not empty param.password}">
  <c:set scope="session" var="loginUser" value="${param.login}" />
  <c:redirect url="index.jsp" />
</c:if>
