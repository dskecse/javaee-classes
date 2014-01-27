<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
  <title>Error Page</title>
  <link href="<s:url value='/css/main.css'/>" rel="stylesheet">
</head>
<body>
  <s:actionerror/>
  <br>
  In order that the development team can address this error, please report what you were doing that caused this error.
  <br><br>
  The following information can help the development
  team find where the error happened and what can be done to prevent it from
  happening in the future.
</body>
</html>
