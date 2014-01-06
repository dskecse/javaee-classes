<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<c:if test="${empty sessionScope['loginUser']}">
  <c:redirect url="login.jsp" />
</c:if>

<a href="logout.jsp">
  Logout <c:out value="${sessionScope['loginUser']}" />
</a>
