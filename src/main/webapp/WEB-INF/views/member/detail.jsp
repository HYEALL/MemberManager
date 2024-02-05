<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>membermanager</title>
  <link rel="stylesheet" href="/css/home.css">
</head>
<body>
  <header>
    <h1 class="title"><a href="home"><img src="/img/aclimb.png"></a></h1>
  </header>
  <div class="container">
    <nav>
      <span class="pageName">회원${ member.id > 0 ? "수정" : "등록" }</span>
      <input type="sumbit" class="search">
      <button type="sumbit" class="searchBtn">검색</button>
      <hr class ="hr1">
    </nav>
    <section>
      <div class="secContainer">
        <form:form method="post" modelAttribute="member">
          <h1 class="subtitle">${ member.id > 0 ? "기존회원정보수정" : "신규회원정보입력" }</h1>

          <div><label for="name" class="formlabel">이름</label> 
          <form:input path="name" /></div>

			    <div><label for="birthDate" class="formlabel">생년월일</label> 
          <form:input type="date" path="birthDate" /></div>

          <div><label for="createDate" class="formlabel">가입일</label> 
          <form:input type="date" path="createDate" /></div>

          <div><label for="expirationDate" class="formlabel">회원권만료일</label> 
          <form:input type="date" path="expirationDate" /></div>

          <div><label for="remainCount" class="formlabel">잔여횟수권</label> 
          <form:input path="remainCount" /></div>

          <input type="submit" value="저장" class="save">
        </form:form>
      </div>
  </div>
    </section>
</body>
</html>