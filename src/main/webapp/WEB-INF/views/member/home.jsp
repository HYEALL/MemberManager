<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>membermanager</title>
  <link rel="stylesheet" type="text/css" href="/css/home.css">
</head>

<body>
    <header>
      <h1 class="title"><a href="home"><img src="/img/aclimb.png"></a></h1>
    </header>
    <div class="container">
      <nav>
        <span class="pageName">회원관리</span>
        <a href="detail"><button type="sumbit" class="signUp">신규회원등록</button></a>
        <input type="sumbit" class="search">
        <button type="sumbit" class="searchBtn">검색</button>
        <hr class ="hr1">
      </nav>
      <section>
        <div class="secContainer">
          <table>
            <thead>
              <tr>
                <th>정렬순서</th>
                <th>이름</th>
                <th>생년월일</th>
                <th>가입일</th>
                <th>회원권만료일</th>
                <th>잔여횟수권</th>
                <th>회원상태</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="member" items="${ members }">
                <tr onclick="location.href='edit?id=${ member.id }'">
                  <td>${ member.id }</td>
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
    </div>
      </section>
</body>

</html>