<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    div.container { width: 900px; margin: 50px auto; }
    thead th { background-color: #eee; }
    table{ border-collapse: collapse; width: 100%; }
    td, th { padding: 4px; border: 1px solid lightgray; }
  </style>
</head>
<body>
<div class="container">
  <h1>회원목록</h1>
  
  <table class="table table-bordered table-condensed">
    <thead>
      <tr>
        <th>이름</th>
        <th>생년월일</th>
        <th>가입일</th>
        <th>회원권만료일</th>
        <th>잔여횟수권</th>
        <th>현재회원여부</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="member" items="${ members }">
        <tr>
          <td>${ member.name }</td>
          <td>${ member.birthDate }</td>
          <td>${ member.createDate }</td>
          <td>${ member.expirationDate }</td>
          <td>${ member.remainCount }</td>
          <td>${ member.valid }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

</div>
</body>
</html>

