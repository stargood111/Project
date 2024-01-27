<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>화학사고 영향평가</title>
    <link rel="stylesheet" href="DNA/css/style4.css">

</head>
<body>

	<header>
        <%@ include file="dna_header.jsp"%>
    </header>
    
	<nav>
        <ul class="navMenu">
            <li><a href="../../html/common/index.html"><img src="DNA/img/common/icon_home.svg" alt="home move button"></a></li>
            <li><a href="javascript:void(0)">화학사고 영향평가</a></li>
            <li><a href="javascript:void(0)">화학사고 시나리오 (중앙대)</a></li>
        </ul>
    </nav>
    <!-- 서브내브 끝 -->


    <form class="form-horizontal" name ="mainForm">
      <div id = "unisearch">
		<button type="button" id = "unibuttion2"onclick="javascript:location.href='/JetFire?temp=${param.temp}&bar=${param.bar}&user_input=${param.user_input}'">JetFire</button>
		<button type="button" id = "unibuttion"onclick="javascript:location.href='/PoolFire?temp=${param.temp}&bar=${param.bar}&user_input=${param.user_input}'">PoolFire</button>
		<button type="button" id = "unibuttion"onclick="javascript:location.href='/Fireball?temp=${param.temp}&bar=${param.bar}&user_input=${param.user_input}'">Fireball</button>
		<button type="button" id = "unibuttion"onclick="javascript:location.href='/COC?temp=${param.temp}&bar=${param.bar}&user_input=${param.user_input}'">Concentration of chemical</button>
		<button type="button" id = "unibuttion"onclick="javascript:location.href='/VCE?temp=${param.temp}&bar=${param.bar}&user_input=${param.user_input}'">Vapor Cloud Explosion</button>
        <input type="button" id="unibuttion" value="도움말" style="margin-left: 330px; border: none; ; cursor: pointer; background-size: cover; width: 60px; height: 30px;">
    </div>

    <div id="submitvalue" >
        <div>
            <h3>사고 시나리오</h3>
            <input type="text" class="searchbox" value="공정물질" readonly />
            <select id="selectbox" class="">
                <option value="Ammonia">암모니아</option>
            </select>
            <input type="text" class="searchbox" value="누출 각도 (°)" readonly />
            <input type="text" class="valuebox" value=""/>
        </div>
        
        <div>
            <input type="text" class="searchbox" value="온도 (℃)" readonly />    
            <input type="text" class="valuebox" name ="temp" value= "${param.temp}"/>
            <input type="text" class="searchbox" value="누출 높이 (m)" readonly />
            <input type="text" class="valuebox" value=""/>
        </div>
        <div>
            <input type="text" class="searchbox" value="압력 (bar)" readonly />
            <input type="text" class="valuebox" value="${param.bar}"/>
            <input type="text" class="searchbox" value="풍속 (m/s)" readonly />
            <input type="text" class="valuebox" value=""/>
        </div>
        <div>
            <input type="text" class="searchbox" value="누출공 크기 (mm)" readonly />
            <input type="text" class="valuebox" value="${param.user_input}"/>
            <input type="text" class="searchbox" value="풍향 (°)" readonly />
            <input type="text" class="valuebox" value=""/>
        </div>
        <div>
            <input type="text" class="searchbox" value="누출률(유량) (kg/s)" readonly />
            <input type="text" class="valuebox" value=""/>
        </div>
        <div>
            <h3>환경 정보</h3>
            <input type="text" class="searchbox" value="대기온도 (℃)" readonly />
            <input type="text" class="valuebox" value=""/>
            <input type="text" class="searchbox" value="대기압 (atm)" readonly />
            <input type="text" class="valuebox" value=""/>
            <input type="text" class="searchbox" value="습도 (%)" readonly />
            <input type="text" class="valuebox" value=""/>
        </div>
        <div>
            <h3>리포팅 위치</h3>
            <input type="text" class="searchbox" value="거리 (m)" readonly />
            <input type="text" class="valuebox" value=""/>
            <input type="text" class="searchbox" value="높이 (m)" readonly />
            <input type="text" class="valuebox" value=""/>
        </div>
        <div>
        <button class="beforebutton" id="beforebutton" type="button" onclick="history.back();">이전</button>
        <button class="submitbutton" id="submitbutton" type="button" onclick="location.href='/Evaluation'">적용</button>
        </div>    
    </div>
    
</form>
</body>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
</script>
</html>