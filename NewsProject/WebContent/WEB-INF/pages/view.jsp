<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<title>Add News</title>
	<meta charset="utf-8">
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
	<input type="submit" value="<spring:message code="comment.add"/>" />
</body>
</html>
