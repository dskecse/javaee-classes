<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title><spring:message code="page.list.title" /></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
	<link rel="stylesheet" href="<c:url value='/resources/css/main.css' />" />
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-responsive.min.css'/>" />
</head>
<body>
	<div class="container-narrow">
    <div class="masthead">
      <ul class="nav nav-pills pull-right">
        <li class="active">
          <a href="/news"><spring:message code="label.home" /></a>
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

    <div class="jumbotron">
      <h1><spring:message code="page.heading" /></h1>
      <p class="lead"><spring:message code="page.main" /></p>
			<spring:url value="/news/add" var="addUrl" />
      <a class="btn btn-large btn-success" href="${addUrl}">
				<spring:message code="news.add" />
      </a>
    </div>

    <hr>

    <div class="row-fluid marketing">
      <div class="span12">

      	<c:choose>
      		<c:when test="${empty newsList}">
      			<div class="alert"><spring:message code="news.no" /></div>
      		</c:when>
      		<c:otherwise>
    				<c:forEach items="${newsList}" var="newsItem">
			        <div class="media">
			          <a class="pull-left" href="news/${newsItem.newsId}">
			            <img class="media-object" src="<c:url value='/resources/img/64x64.png'/>">
			          </a>
			          <div class="media-body">
			            <h4 class="media-heading">${newsItem.title}</h4>
			            <p>
			            	${newsItem.brief}
		    						<a href="news/${newsItem.newsId}">
		    							<spring:message code="action.more" />
		    						</a>
			            </p>
		    					<p class="muted">
			            	<spring:message code="news.created" />:
			            	<fmt:formatDate value="${newsItem.created}" pattern="dd.MM.YYYY HH:mm" /><br>
			            	<spring:message code="news.comments" />: <a href="news/${newsItem.newsId}/comments">${fn:length(comments)}</a>
			            </p>
			          </div>
			        </div>
    				</c:forEach>
      		</c:otherwise>
      	</c:choose>
      </div>
    </div>

    <hr>

    <div class="footer">
      <p>© Company 2013</p>
    </div>
  </div>
</body>
</html>
