<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="DNA/css/style.css">
</head>

<body>
    <!-- 헤더 시작 -->
    <header>
         <%@ include file="dna_header.jsp"%> 
    </header>

    <nav>
        <ul class="navMenu">
            <li><a><img src="DNA/img/common/icon_home.svg" alt="home move button"></a></li>
            <li><a>로그인</a></li>
        </ul>
    </nav>
    <!-- 서브내브 끝 -->

    <div id="wrap">
        <!-- 컨텐츠 시작 -->
        <div id="adminContainer">
            <article id="login">
                <div class="loginModal">
                    <div class="loginCont">
                        <div class="loginWrap">
                            <div class="inputGroup">
                                <div class="input idInput">
                                    <input type="text" placeholder="Email Address">
                                    <label>
                                    </label>
                                </div>
                                <div class="input pwInput">
                                    <input type="password" placeholder="Password">
                                    <label>
                                    </label>
                                </div>
                            </div>
                            <p>*비밀번호를 정확하게 입력해주세요</p>
                            <div class="idCheck">
                                <input type="checkbox">
                                <label>아이디 저장</label>
                            </div>
                            <div class="btnGroup">
                                <button class="btn-point"><a href="../../html/admin/ModelAdmin.html"><span>Login</span></a></button>
                                <button class="btn-line"><span>Sign Up</span></button>
                            </div>
                            <ul>
                                <li><a href="javascript:void(0)">아이디/비밀번호 찾기</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </article>
        </div>

    </div>
</html>
</body>
</html>
