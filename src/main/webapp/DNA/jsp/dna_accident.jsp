<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <!-- (성능)단정예보 단독페이지-->
    <title>화학사고 관련 인자</title>
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
            <li><a href="javascript:void(0)">화학사고 관련 인자</a></li>
    </nav>
    <!-- 서브내브 끝 -->


    <form class="form-horizontal" id="apiForm">
        <div class="form-group">
            <select id="step1" class="emptyCheck" title="시/도" name = "city">
                <option id="city" value="">시/도</option>
            </select>   
            
            <select id="step2" name ="step2">
                <option id="county" value="">시/군/구</option>
            </select>
            
            <select id="step3" name ="step3">
                <option id="town" value="">읍/면/동</option>
            </select>

            <select id="step4" name ="">
                <option id="" value="">사업자명</option>
            </select>
            <button class="btn btn-lg btn-primary btn-block" id="submit" type="button">검색</button>
   <!--         <input type="button" id="unibuttion" value="도움말" style="margin-left: 890px; font-size: 16px; border: none; ; cursor: pointer; background-image: url('path/to/your/image.png'); background-size: cover; width: 60px; height: 30px;"> -->
        </div>
        <div id = "submitvalue">
            <input type="text" id="conditionbox" value="사업장" readonly/>
            <input type="text" id="valuebox" value="위도" readonly/> 
			<input type="text" id="lat" placeholder=""  readonly/>
            <input type="text" id="valuebox" value="경도"  readonly/>
        	<input type="text" id="lng" placeholder=""  readonly/>
            <input type="text" style="border: none; background: transparent" disabled readonly;>
            <input type="text" style="border: none; background: transparent" disabled readonly;>
            <input type="text" style="border: none; background: transparent" disabled readonly;>
            <input type="text" style="border: none; background: transparent" disabled readonly;>
        
       	</div>
       	<div id ="submitvalue">
            <input type="text" id="conditionbox" value="기상상황" readonly/>
            <input type="text" id="valuebox" value="온도" readonly/>
        	<input type="text" id="T1H" placeholder="" readonly/>
            <input type="text" id="valuebox" value="습도" readonly/>
        	<input type="text" id="REH" placeholder="" readonly/>
            <input type="text" id="valuebox" value="풍향" readonly/>
        	<input type="text" id="VEC" placeholder="" readonly/>
            <input type="text" id="valuebox" value="풍속" readonly/>
        	<input type="text" id="WSD" placeholder="" readonly/>
       	</div>
   	 	<div id ="submitvalue">
            <input type="text" id="conditionvalue" style="border: none; background: transparent" disabled readonly;> 
            <input type="text" id="valuebox" value="체감온도" readonly/>
        	<input type="text" id="STI" placeholder="" />
            <input type="text" id="valuebox" value="불쾌지수" readonly/>
        	<input type="text" id="DI" placeholder="" />
            <input type="text" id="valuebox" value="대기정체지수" readonly/>
        	<input type="text" id="ADI" placeholder="" readonly/>
            <input type="text" style="border: none; background: transparent" disabled readonly;>
            
			<input type="hidden" id="gridx" placeholder="gridx" readonly/>
        	<input type="hidden" id="gridy" placeholder="gridy" readonly/>
        	<input type="hidden" id="areacode" placeholder="areacode" readonly/>
       	</div>    
    </form>
    
        <div id="codesearch">
            <input type="text" id="conditionbox" value="시설코드" readonly/>
            <input type="text" id="conditionbox" value="기기코드" readonly/>
            <input type="text" id="conditionbox" value="사고원인코드" readonly/>  
            <input type="text" id="conditionbox" value="사고유형" readonly/>
        </div>

        <!-- --------------------------------->
        <div id = "conditionbox-row">
            <input type="text" id="conditionvalue" readonly value="A. 운송시설"/>
            <input type="text" id="conditionvalue2" readonly value="1. 반응코드"/>
            <input type="text" id="conditionvalue2" readonly value="2.1 배관"/>
            <input type="text" id="conditionvalue" readonly value="FD 시설결함"/>  
            <input type="text" id="conditionvalue" readonly value="AN 기능이상"/>
        </div>
        <div id = "conditionbox-row">
            <input type="text" id="conditionvalue" readonly value="B. 하역시설"/>
            <input type="text" id="conditionvalue2" readonly value="1.2 압력용기"/>
            <input type="text" id="conditionvalue2" readonly value="2.2 밸브류"/>
            <input type="text" id="conditionvalue" readonly value="SF 안전기준 미준수"/>  
            <input type="text" id="conditionvalue" readonly value="BD 고장"/>
        </div>
        <div id = "conditionbox-row">
            <input type="text" id="conditionvalue" readonly value="C 저장시설"/>
            <input type="text" id="conditionvalue2" readonly value="1.3 탑조류"/>
            <input type="text" id="conditionvalue2" readonly value="2.3 여과기"/>
            <input type="text" id="conditionvalue" style="border: none; background: transparent" disabled readonly;>  
            <input type="text" id="conditionvalue" value="BR파손"/>
        </div>
        <div id = "conditionbox-row">
            <input type="text" id="conditionvalue" readonly value="D 이송시설"/>
            <input type="text" id="conditionvalue2" readonly value="1.4 열교환기"/>
            <input type="text" id="conditionvalue2" readonly value="2.4 오리피스"/>
            <input type="text" id="conditionvalue" style="border: none; background: transparent" disabled readonly;>  
            <input type="text" id="conditionvalue"value="CO 부식"/>
        </div>
        <div id = "conditionbox-row">
            <input type="text" id="conditionvalue" readonly value="E 공정시설"/>
            <input type="text" id="conditionvalue2" readonly value="1.5 공기냉각기"/>
            <input type="text" id="conditionvalue2" readonly value="3.1 압력방출밸브"/>
            <input type="text" id="conditionvalue" style="border: none; background: transparent" disabled readonly;>  
            <input type="text" id="conditionvalue" value="CR균열"/>
        </div>
        <div id = "conditionbox-row">
            <input type="text" id="conditionvalue" readonly value="F 배출처리시설"/>
            <input type="text" id="conditionvalue2" readonly value="1.6 저장탱크"/>
            <input type="text" id="conditionvalue2" readonly value="3.2 릴리프밸브"/>
            <input type="text" id="conditionvalue" style="border: none; background: transparent" disabled readonly;>  
            <input type="text" id="conditionvalue" readonly value="DF 결함"/>        
        </div>
        <div id = "conditionbox-row">
            <input type="text" id="conditionvalue" readonly value="G 기화시설"/>
            <input type="text" id="conditionvalue2" readonly value="1.7 히터"/>
            <input type="text" id="conditionvalue2" readonly value="3.3 파열판"/>
            <input type="text" id="conditionvalue" style="border: none; background: transparent" disabled readonly;>  
            <input type="text" id="conditionvalue" value="DT 노후화"/>        
        </div>
        <div id = "conditionbox-row">
            <input type="text" id="conditionvalue" readonly value="H 냉동시설"/>
            <input type="text" id="conditionvalue2" readonly value="1.8 건조기"/>
            <input type="text" id="conditionvalue2" readonly value="3.4 후레이"/>
            <input type="text" id="conditionvalue" style="border: none; background: transparent" disabled readonly;>  
            <input type="text" id="conditionvalue" value="MF 오작동"/>       
         </div>

	
</body>
</script><script src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
    crossorigin="anonymous"></script>
	<script>
	
$(document).ready(function () {
    // 시/도 선택 시 이벤트
    $('#step1').on("change", function () {
        // 시/도 선택 시 위도와 경도를 초기화
        $('#lat').val('');
        $('#lng').val('');
        $('#T1H').val('');
        $('#REH').val('');
        $('#VEC').val('');
        $('#WSD').val('');
        $('#STI').val('');
        $('#DI').val('');
        $('#ADI').val('');
    });
});

	
	$(document).ready(function () {
	    loadArea('city');

	    $('#step1').on("change", function () {
	        loadArea('county', $(this));
	        
	    });

	    $('#step2').on("change", function () {
	        loadArea('town', $(this));
	    });
	    $('#step3').on("change", function () {
	        loadArea('last', $(this));
	    });

	  
		
	    // 시/도 , 시/군/구 , 읍/면/동 SELECT BOX 
	    function loadArea(type, element) {
	        var value = $(element).find('option:selected').text();
	        var data = { type: type, keyword: value };
			
	        $.ajax({
	            url: "/Accident",
	            data: data,
	            dataType: "JSON",
	            method: "POST",
	            success: function (res) {
	                if (type == 'city') {
	                    res.forEach(function (city) {
	                        $('#step1').append('<option value="' + city.areacode + '">' + city.step1 + '</option>') //시,도
	                    });
	                } else if (type == 'county') {
	                    $('#county').siblings().remove();
	                    $('#town').siblings().remove();
	                    res.forEach(function (county) {
	                        $('#step2').append('<option value="' + county.areacode + '">' + county.step2 + '</option>') //시,군,구
	                    });
	                } else if(type == 'town'){
	                    $('#town').siblings().remove();

	                    res.forEach(function (town) {
	                        $('#step3').append('<option value="' + town.areacode + '">' + town.step3 + '</option>') //읍,면,동         
	                    });   
	                }else {
	                	res.forEach(function (last){
	                		
	               	 $('#lat').siblings().removeData();
	               	 $('#lng').siblings().removeData();
	                    $('#lat').val(last.latitudehour + "." + last.latitudemin); //위도
                        $('#lng').val(last.longitudehour + "." + last.longitudemin); //경도
                        $('#gridx').val(last.gridx); //좌표X(시)
                        $('#gridy').val(last.gridy); //좌표Y(시)
                        $('#areacode').val(last.areacode); //행정구역코드	
	                	});
	                }
	            },
	            error: function (xhr) {
	                alert(xhr.responseText);
	            }
	        });
	    }

	    
		
	    $('#submit').on("click", function () {
	    	
	    	var date = new Date();
	    	var year = date.getFullYear();
		    var month = ('0' + (date.getMonth() + 1)).slice(-2);
		    var day = ('0' + date.getDate()).slice(-2);
		    var hours = ('0' + date.getHours()).slice(-2);
		    var initDate = year + month + day; // 날짜 조회 YYYYMMDD
		    var initDate2 = year + month + day + hours; // 날짜 시간 조회 YYYYMMDDHH
	        var gridx = $("#gridx").val(); // 좌표 x
	        var gridy = $("#gridy").val(); // 좌표 y
	        var areacode = $("#areacode").val(); // 행정구역코드
			
	      //단기예보조회
	        $.ajax({ 
	            type: "GET",
	            url: `http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst?serviceKey=Rb9oYAs8K9t2c4sskY2kudyS7pTZXjq5856l1EZXeqnNKXN1RrFyzenPwHeMh0dd90Ba9CZVJwWZlJToAn9VMg%3D%3D&numOfRows=1000&pageNm=1&dataType=JSON&base_date=\${initDate}&base_time=0600&nx=\${gridx}&ny=\${gridy}`,
	            data: {},
	            success: function (data) {
	                if (data && data.response && data.response.body && data.response.body.items && data.response.body.items.item) {
	   	             var T1H = data.response.body.items.item[1].obsrValue;  // T1H 기온 ℃
	   	             var REH = data.response.body.items.item[3].obsrValue;  // REH 습도 %
	   	             var VEC = data.response.body.items.item[5].obsrValue;  // VEC 풍향 deg
	   	             var WSD = data.response.body.items.item[7].obsrValue;  // WSD 풍속 m/s
	   	         	 var DI = parseInt((1.8 * T1H) - 0.55 * (1 - REH) * (1.8 * T1H - 26) + 32); //불쾌지수 계산법 https://www.nhimc.or.kr/ilsan_news/Hello_2018Summer/html/sub01_03.html#:~:text=%EB%AF%B8%EA%B5%AD%20%EC%8B%9C%EC%B9%B4%EA%B3%A0%20%EB%8C%80%ED%95%99%EC%9D%98%20%EA%B8%B0%ED%9B%84,%EB%B6%88%EC%BE%8C%EC%A7%80%EC%88%98'%EB%A5%BC%20%EC%A0%9C%EC%95%88%ED%96%88%EB%8B%A4.&text=%EB%B6%88%EC%BE%8C%EC%A7%80%EC%88%98%EB%8A%94%20%EA%B8%B0%EC%98%A8%EA%B3%BC,)%2B32%5D%EB%A1%9C%20%EA%B3%84%EC%82%B0%ED%95%9C%EB%8B%A4
	   	         	if(DI > 80){ //불쾌지수 단계 https://www.weather.go.kr/plus/life/li_asset//HELP/basic/help_01_05.jsp 
   	           			DI = '매우 높음';
   	           		} else if(DI => 75 && 80 > DI) {
   	           			DI = '높음';
   	           		} else if(DI => 68 && 75 > DI) {
   	           			DI = '보통';
   	           		} else {
   	           			DI = '낮음'; 
   	           		}
                }
	                
	                $('#T1H').val(T1H + '℃');
	   	      		$('#REH').val(REH + '%');
	   	      		$('#VEC').val(VEC + 'deg');
	   	      		$('#WSD').val(WSD + 'm/s');	   	
	   	      		$('#DI').val(DI);	   				
	   			     },
	            error: function (request, status, error) {
	                console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
	            }
	        });
	      
	      //대기정체지수조회
	        $.ajax({ 
	            type: "GET",
	            url: `https://apis.data.go.kr/1360000/LivingWthrIdxServiceV4/getAirDiffusionIdxV4?ServiceKey=Rb9oYAs8K9t2c4sskY2kudyS7pTZXjq5856l1EZXeqnNKXN1RrFyzenPwHeMh0dd90Ba9CZVJwWZlJToAn9VMg==&dataType=JSON&areaNo=\${areacode}&time=\${initDate2}`,
	            data: {},
	            success: function (data) {
	            	var ADI = data.response.body.items.item[0].h3; 
	                
	                if(ADI = 100){
	                	ADI = "낮음";
	                } else if(ADI = 75) {
	                	ADI = "보통";
	                } else if(ADI = 50) {
	                	ADI = "높음";
	                } else if(ADI = 25) {
	                	ADI = "매우 높음";
	                }
	                $('#ADI').val(ADI);
					;
	   			     },
	            error: function (request, status, error) {
	                console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
	            }
	        });
	      //체감온도 API 5~9월에만 제공 
	        $.ajax({ 
	            type: "GET",
	            url: `https://apis.data.go.kr/1360000/LivingWthrIdxServiceV4/getSenTaIdxV4?serviceKey=Rb9oYAs8K9t2c4sskY2kudyS7pTZXjq5856l1EZXeqnNKXN1RrFyzenPwHeMh0dd90Ba9CZVJwWZlJToAn9VMg%3D%3D&\${areacode}&time=\${initDate2}&requestCode=A41`,
	            data: {},
	            success: function (data) {
	            	 $('#STI').val("5~9월에만 이용가능");	
	   			     },
	            error: function (request, status, error) {
	                console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
	            }
	        });
	    });
	});
	</script>
</html>
