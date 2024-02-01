<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>membermanager</title>
  <link rel="stylesheet" href="css/home.css">
</head>
<body>
  <header>
    <h1 class="title"><a href="#"><img src="img/aclimb.png"></a></h1>
  </header>
  <div class="container">
    <nav>
      <span class="pageName">회원등록</span>
      <input type="sumbit" class="search">
      <button type="sumbit" class="searchBtn">검색</button>
      <hr class ="hr1">
    </nav>
    <section>
      <div class="secContainer">
        <form action="/home.html" method="post">
          <h1 class="subtitle">신규회원정보입력</h1>

          <div><label for="name" class="formlabel">이름</label> 
          <input type="text" id="name" class="forminput"></div>

			    <div><label for="birthdate" class="formlabel">생년월일</label> 
          <input type="date" id="birthdate" class="forminput"></div>

          <div><label for="createdate" class="formlabel">가입일</label> 
          <input type="date" id="createdate" class="forminput"></div>

          <div><label for="expirationdate" class="formlabel">회원권만료일</label> 
          <input type="text" id="expirationdate" class="forminput" readonly></div>

          <div><label for="remaincount" class="formlabel">잔여횟수권</label> 
          <input type="text" id="expirationdate" class="forminput" readonly></div>

          <input type="submit" value="저장" class="save">
        </form>
      </div>
  </div>
    </section>
</body>
</html>