<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title><spring:message code="page.login.title" /></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
	<link rel="stylesheet" href="<c:url value='/resources/css/login.css'/>" />
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-responsive.min.css'/>" />
</head>
<body>
	<div class="container">
    <form id="signup" class="form-signin" method="post" action="j_spring_security_check">
      <h2 class="form-signin-heading">
      	<spring:message code="label.signin" />
      </h2>
      <c:if test="${not empty sessionScope['SPRING_SECURITY_LAST_EXCEPTION']}">
				<div class="alert alert-error">
					Your login attempt was not successful.<br>Caused:
					<strong>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</strong>
				</div>
			</c:if>
      <input type="text" class="input-block-level" name="j_username" placeholder="<spring:message code='label.username' />" autofocus>
      <input type="password" class="input-block-level" name="j_password" placeholder="<spring:message code='label.password' />">
      <button class="btn btn-large btn-block btn-primary" type="submit">
      	<spring:message code="button.label.signin" />
      </button>
      <div class="controls">
	      <label class="checkbox">
	        <input id="_spring_security_remember_me" name="_spring_security_remember_me" type="checkbox" value="true" />
	        <spring:message code="label.remember" />
	      </label>
      </div>
    </form>
  </div>
</body>
</html>
