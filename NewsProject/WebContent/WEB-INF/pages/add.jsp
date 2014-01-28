<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
	<title>Add News</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>" />
</head>
<body>
	<spring:url value="/news/add" var="url" />
	<form:form action="${url}" method="post" commandName="newsModel">
		<table>
			<tr>
				<td>
					<label for="title"><spring:message code="news.title" /></label>
				</td>
				<td><form:input id="title" path="title" /><form:errors path="title" cssClass="error" /></td>
			</tr>
			<tr>
				<td>
					<label for="brief"><spring:message code="news.brief" /></label>
				</td>
				<td><form:input id="brief" path="brief" /><form:errors path="brief" cssClass="error" /></td>
			</tr>
			<tr>
				<td>
					<label for="content"><spring:message code="news.content" /></label>
				</td>
				<td><form:textarea id="content" path="content" /><form:errors path="content" cssClass="error" /></td>
			</tr>
		</table>
		<input type="submit" value="<spring:message code="news.add"/>" />
	</form:form>
</body>
</html>
