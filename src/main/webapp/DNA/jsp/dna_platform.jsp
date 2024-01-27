<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>플랫폼 소개</title>
    <!-- (성능)단정예보 단독페이지-->
    <link rel="stylesheet" href="DNA/css/style.css">
</head>
<body>

    <header>
        <%@ include file="dna_header.jsp"%>
    </header>

    <!-- 서브내브 -->
    <nav>
        <ul class="navMenu">
            <li><a href="/"><img src="DNA/img/common/icon_home.svg" alt="home move button"></a></li>
            <li><a href="javascript:void(0)">플랫폼 소개</a></li>
        </ul>
    </nav>
    <!-- 서브내브 끝 -->

    <div class="intro-box">
        <div>
            <h1><span id ="platform">PLATFORM</span> for <span id = "platform_C">C</span>hemical <span id ="platform_A">A</span>ccident <span id = "platform_P">P</span>rediction</h1>
            <br><br><br><br><br><br>
            <h1><span id ="platform">PLA</span><span id ="platform_C">C</span><span id ="platform_A">A</span><span id="platform_P">Pture</span></h1>
            <br>
            <h2>본 플랫폼은 화학사고를 예측하기 위해 사전학습 된 화학사고 관련 데이터를 바탕으로 화학사고 공정 및 관련 변수들을
            <br><br>
            종합하여 화학사고 인자를 예측하고 사전에 사고를 캡쳐하여 예방하고자 마련된 공간입니다.
            </h2>
        </div>
    </div>  

    <div class="sub-box">
        <span><h3>본 플랫폼은 한국환경산업기술원 ‘화학사고 예측-예방 고도화 기술개발’의</h3></span>
        <span><h3>‘D.N.A 기반 화학사고 예측 리스크 평가기술 개발’ 사업의 지원을 받아서 제작하였습니다.</h3></span>
    </div>

</body>
</html>