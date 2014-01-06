<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:if test="${empty sessionScope['loginUser']}">
  <c:redirect url="login.jsp" />
</c:if>

<a href="logout.jsp">
  <fmt:message key="header.button.logout" />
</a>
