<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title><spring:message code="page.view.title" /></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
	<link rel="stylesheet" href="<c:url value='/resources/css/main.css'/>" />
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-responsive.min.css'/>" />
</head>
<body>
	<div class="container-narrow">
    <div class="masthead">
      <ul class="nav nav-pills pull-right">
        <li>
          <a href="<c:url value='/news' />">
            <spring:message code="label.home" />
          </a>
        </li>
        <li>
        	<a href="<c:url value='/j_spring_security_logout' />">
						<spring:message code="label.logout" />
					</a>
				</li>
      </ul>
      <div id="locale">
    		<a href="?lang=en"><spring:message code="en" /></a> | <a href="?lang=ru"><spring:message code="ru" /></a>
      </div>
    </div>

    <hr>

    <div class="row-fluid marketing">
      <div class="span12">

      	<dl class="dl-horizontal">
      	  <dt><spring:message code="news.title" /></dt>
      	  <dd>${news.title}</dd>

      	  <dt><spring:message code="news.brief" /></dt>
      	  <dd>${news.brief}</dd>

					<dt><spring:message code="news.content" /></dt>
					<dd>${news.content}</dd>
      	</dl>

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

      </div>
    </div>

    <hr>

    <div class="footer">
      <p>© Company 2013</p>
    </div>
  </div>
</body>
</html>
