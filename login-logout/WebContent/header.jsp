<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="lang" value="${not empty param.lang ? param.lang : not empty lang ? lang : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${lang}" />
<fmt:setBundle basename="org.login_logout.resource.Messages" />

<c:if test="${empty sessionScope['loginUser']}">
  <c:redirect url="login.jsp" />
</c:if>

<a href="logout.jsp">
  <fmt:message key="header.button.logout" />
</a>
