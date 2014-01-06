<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <title>Logged out</title>
  <meta charset="utf-8">
</head>
<body>
  <% session.invalidate(); %>
  <c:redirect url="/login.jsp" />
</body>
</html>
