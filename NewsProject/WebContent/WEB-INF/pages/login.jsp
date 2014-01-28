<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>" />
</head>
<body>
	<div class="container" valign="center">
		<div class="well">
			<form id="signup" class="form-horizontal" method="post" action="j_spring_security_check">
				<legend>
					<span class=".icon-plus-sign">
						<spring:message code="label.signin" />
					</span>
				</legend>
				<div class="control-group">
					<label class="control-label">
						<spring:message code="label.username" />
					</label>
					<div class="controls">
						<div class="input-prepend">
							<input type="text" class="input-xxlarge" name="j_username">
						</div>
					</div>
				</div>
				<div class="control-group ">
					<label class="control-label">
						<spring:message code="label.password" />
					</label>
					<div class="controls">
						<div class="input-prepend">
							<input type="text" class="input-xxlarge" name="j_password">
						</div>
					</div>
				</div>

				<div class="control-group ">
					<label class="control-label">
						<spring:message code="label.remember" />
					</label>
					<div class="controls">
						<div class="input-prepend">
							<input id="_spring_security_remember_me" name="_spring_security_remember_me" type="checkbox" value="true" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<button type="submit" class="btn btn-primary">
							<spring:message code="button.label.signin" />
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
