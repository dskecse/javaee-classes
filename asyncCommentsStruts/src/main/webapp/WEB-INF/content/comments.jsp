<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
  <title>Async Comments Form Made on Struts 2</title>
  <link href="<s:url value='/css/main.css'/>" rel="stylesheet" type="text/css"/>
</head>
<body>
  <s:actionerror />
  <s:form action="saveComment" method="post" validate="true">
    <s:hidden name="comment.id" value="%{comment.id}"/>
    <s:textfield name="comment.author" value="%{comment.author}" label="%{getText('label.author')}" size="40"/>
    <s:textarea name="comment.content" value="%{comment.content}" label="%{getText('label.content')}" rows="5" cols="50"/>
    <s:submit value="%{getText('button.label.submit')}" targets="message"/><span id="message"></span>
  </s:form>

  <s:iterator value="comments">
    <div class="comment">
      <s:text name="block.label.author"/>:&nbsp;<strong><s:property value="author"/></strong><br>
      <s:property value="content"/>
    </div>
  </s:iterator>
</body>
</html>
