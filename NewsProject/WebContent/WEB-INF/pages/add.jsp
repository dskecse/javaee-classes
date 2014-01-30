<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title><spring:message code="page.add.title" /></title>
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
				<spring:url value="/news/add" var="url" />
				<form:form action="${url}" method="post" commandName="newsModel" class="form-horizontal">
					<div class="control-group">
					  <label class="control-label" for="title"><spring:message code="news.title" /></label>
					  <div class="controls">
					    <form:input id="title" path="title" class="input-xlarge" /> <form:errors path="title" cssClass="error" />
					  </div>
					</div>
					<div class="control-group">
				    <label class="control-label" for="brief"><spring:message code="news.brief" /></label>
				    <div class="controls">
				      <form:textarea id="brief" path="brief" class="input-xlarge" /> <form:errors path="brief" cssClass="error" />
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="content"><spring:message code="news.content" /></label>
				    <div class="controls">
				      <form:textarea id="content" path="content" class="input-xlarge" /> <form:errors path="content" cssClass="error" />
				    </div>
				  </div>
				  <div class="control-group">
				    <div class="controls">
				      <button type="submit" class="btn btn-primary">
				      	<spring:message code="news.add" />
				      </button>
				    </div>
				  </div>
				</form:form>
      </div>
    </div>

    <hr>

    <div class="footer">
      <p>© Company 2013</p>
    </div>
  </div>
</body>
</html>
