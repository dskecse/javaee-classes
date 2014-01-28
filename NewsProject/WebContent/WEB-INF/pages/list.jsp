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
	<a href="${addUrl}" class="btn">
		<spring:message code="news.add" />
	</a>

	<span id="locale">
		<a href="?lang=en"><spring:message code="en" /></a> | <a href="?lang=ru"><spring:message code="ru" /></a>
	</span>

	<c:choose>
		<c:when test="${empty newsList}">
			<div class="alert"><spring:message code="news.no" /></div>
		</c:when>
		<c:otherwise>
			<div class="container-fluid">
				<c:forEach items="${newsList}" var="newsItem">
				  <h2>${newsItem.title}</h2>
					<p>
						${newsItem.brief}
						<a href="news/view/${newsItem.newsId}">
							<spring:message code="action.view" />
						</a>
					</p>
					<p class="muted">
						<spring:message code="news.created" />:
						<fmt:formatDate value="${newsItem.created}" pattern="dd.MM.YYYY HH:mm" />
				  </p>
				  <p class="muted"><spring:message code="news.comments" />: ${fn:length(comments)}</p>
				</c:forEach>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>
