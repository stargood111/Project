<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
    <link rel="stylesheet" href="DNA/css/common.css">
    <link rel="stylesheet" href="DNA/css/reset.css">
</head>
<body>
 <header>
        <div class="header2">
            <ul class="headerMenu">
                <li id ="mainPlatform">
                    <a href="/">
                        <span id ="platform">PLA</span><span id ="platform_C">C</span><span id ="platform_A">A</span><span id="platform_P">Pture 플랫폼</span>
                    </a>
                </li>
                <li>
                    <a href="/Platform">플랫폼 소개</a>
                </li>
                <li>
                    <a href="/Accident">화학사고 관련 인자</a>
                </li>
                <li>
                    <a href="javascript:void(0)">게시판</a>
                    <ul class="subMenu">
                        <li><a href="">화학사고 예측모델</a></li>
                        <li><a href="">화학사고 위험성 평가모델</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/Evaluation">화학사고 영향평가</a>
                        <ul class="subMenu">
                            <li><a href="/Evaluation">화학사고 빈도 (아주대)</a></li>
                            <li><a href="/JetFire">화학사고 시나리오 (중앙대)</a></li>
                            <li><a href="">화학사고 피해영향평가 GIS 표출 (고려대)</a></li>
                        </ul>
                </li>
                 <li>
                    <a href="javascript:void(0)">화학사고 대응</a>
                </li>
            </ul>
            <ul class="headerIcon">
                <li><a href="/Login">로그인</a></li>
            </ul>
        </div>
    </header>
</body>
<script src="DNA/js/jquery_3_6_3.js"></script>
<script src="DNA/js/common.js"></script>
</html>