<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<title>News list</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>" />
</head>
<body>
	<spring:url value="/news/add/page" var="addUrl" />
	<a href="${addUrl}">
		<spring:message code="news.add" />
	</a>

	<span id="locale">
		<a href="?lang=en"><spring:message code="en" /></a> | <a href="?lang=ru"><spring:message code="ru" /></a>
	</span>

	<div class="container-fluid">
		<table class="table table-responsive table-bordered table-hover">
			<thead>
				<tr>
					<td><spring:message code="news.title" /></td>
					<td><spring:message code="news.brief" /></td>
					<td><spring:message code="news.content" /></td>
					<td><spring:message code="news.created" /></td>
					<td><spring:message code="news.updated" /></td>
					<td><spring:message code="news.comments" /></td>
					<td><spring:message code="news.actions" /></td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${newsList}" var="newsItem">
					<tr>
						<td>${newsItem.title}</td>
						<td>${newsItem.brief}</td>
						<td>${newsItem.content}</td>
						<td><fmt:formatDate value="${newsItem.created}" pattern="MM/dd/YYYY"/></td>
						<td>${newsItem.lastModified}</td>
						<td>${fn:length(comments)}</td>
						<td>
							<a href="news/view/${newsItem.newsId}">
								<spring:message code="action.view" />
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
