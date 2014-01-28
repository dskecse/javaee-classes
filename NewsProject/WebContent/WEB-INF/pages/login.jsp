<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>" />
<title>Login</title>
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
