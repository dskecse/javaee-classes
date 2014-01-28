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
	<table>
		<tr>
			<td>
				<label for="title">
					<spring:message code="news.title" />
				</label>
			</td>
			<td>${news.title}</td>
		</tr>
		<tr>
			<td>
				<label for="brief">
					<spring:message code="news.brief" />
				</label>
			</td>
			<td>${news.brief}</td>
		</tr>
		<tr>
			<td>
				<label for="content">
					<spring:message code="news.content" />
				</label>
			</td>
			<td>${news.content}</td>
		</tr>
	</table>

	<p><spring:message code="comment.comments" />:</p>

	<table>
		<c:forEach items="${news.comments}" var="comment">
			<tr>
				<td>author.userName</td>
				<td>author.message</td>
				<td>created</td>
			</tr>
		</c:forEach>
	</table>
	<input type="submit" value="<spring:message code="comment.add"/>" class="btn btn-primary" />
</body>
</html>
