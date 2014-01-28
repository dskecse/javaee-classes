<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>" />
<title>News list</title>
</head>

<spring:url value="/news/add/page" var="addUrl" />
<a href="${addUrl}">add news</a>

<span style="float: right; margin: 0px 10px;"> <a href="?lang=en"><spring:message
			code="en" /> </a> | <a href="?lang=ru"> <spring:message code="ru" /></a>
</span>

<body>

<div class="container-fluid">
	<table class="table table-responsive table-bordered table-hover">
		<thead>
			<tr>
				<td>Title</td>
				<td>Brief</td>
				<td>Content</td>
				<td>Created</td>
				<td>Updated</td>
				<td>Comments count</td>
				<td>Actions</td>
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
					<td><a href="news/view/${newsItem.newsId}">view</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>