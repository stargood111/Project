<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>화학사고 영향평가</title>
    <link rel="stylesheet" href="DNA/css/style3.css">
</head>
<body>

	<header>
        <%@ include file="dna_header.jsp"%>
    </header>
    
	<nav>
        <ul class="navMenu">
            <li><a href="../../html/common/index.html"><img src="DNA/img/common/icon_home.svg" alt="home move button"></a></li>
            <li><a href="javascript:void(0)">화학사고 영향평가</a></li>
            <li><a href="javascript:void(0)">화학사고 빈도 (아주대)</a></li>
        </ul>
    </nav>
    <!-- 서브내브 끝 -->


    <form class="form-horizontal" name = "mainForm" method ="GET" action ="/JetFire">
    <input type="hidden" name="cal_req" value="azu">
    <div id="submitvalue" >
        <div style="display: flex; align-items: center;">
            <h3 style="margin-right: 10px;">설비 정보</h3>
            <select id="selectbox" class="" name = "facility_type">
                <option id="city" value="steel pipe">Steel pipe</option>
                <option id="city" value="flange">Flange</option>
                <option id="city" value="manual valve">Manual valve</option>
                <option id="city" value="actuated valve">Actuated valve</	option>
                <option id="city" value="process vessel">Process vessel</option>
                <option id="city" value="centrifugal pum">Centrifugal pump</option>
                <option id="city" value="Reciprocating pump">Reciprocating pump</option>
                <option id="city" value="centrifugal compressor">Centrifugal compressor</option>
                <option id="city" value="Reciprocating compressor">Reciprocating compressor</option>
                <option id="city" value="Heat exchanger (h/c in shell)">Heat exchanger (shell&tube, shell side HC)</option>
                <option id="city" value="heat exchanger (shell&tube, tube side HC)">Heat exchanger (shell&tube, tube side HC)</option>
                <option id="city" value="Heat exchanger (plate)">Heat exchanger (plate)</option>
                <option id="city" value="Heat exchanger (air cooled)">Heat exchanger (air cooled)</option>
                <option id="city" value="Filter">Filter</option>
                <option id="city" value="Pig trap">Pig trap</option>
                <option id="city" value="Instrument">Instrument</option>
                
            </select>
            
            <input type="button" id="unibuttion" class ="helpbutton" value="도움말" style="margin-left: 750px; border: none; ; cursor: pointer; background-size: cover; width: 60px; height: 30px;">
    <!--         <input type="text" id="" class ="helptext" style="margin-left: 750px; border: none; ; cursor: pointer; background-image: url('path/to/your/image.png'); background-size: cover; width: 60px; height: 30px;"> -->
        </div>
        <br><br>
        <div id = "process_condition">
            <h3>공정 조건</h3>
            <input type="text" class="searchbox" value="공정물질" readonly/>
            <select id="selectbox" name ="chemical_type">
                <option value="Ammonia">암모니아</option>
            </select>
            <input type="text" class="searchbox" value="설비환경" readonly />
            <select id="selectbox" class="" name = "facility_env">
                <option value="out">실외 공정</option>
                <option value="in">실내 공정</option>
            </select>
            <input type="text" class="searchbox" value="설비재질" readonly />
            <select id="selectbox" class="" name ="facility_matarial">
                <option value="SPP">SPP</option>
                <option value="SPPS">SPPS</option>
                <option value="STS304">STS 304</option>
                <option value="STS316">STS 316</option>
                <option value="SPW">SPW</option>
                <option value="GC">GC</option>
                <option value="BC">BC</option>
            </select>
        </div>
        <div>
            <input type="text" class="searchbox" value="온도 (℃)" readonly />
            <input type="text" class="valuebox" name = "temp"/>
            <input type="text" class="searchbox" value="압력(bar)" readonly />
            <input type="text" class="valuebox" name ="bar"/>
            <input type="text" class="searchbox" value="유량" readonly />
            <input type="text" class="valuebox" name="flow_rate"/>
        </div>
        <div>
            <input type="" class="valuebox2" value="공정안전관리등급" readonly />
            <select id="selectbox" name ="psm_grade" class="" style="width: 60px; height: 30px; margin-right: 10px;">
                <option value="1">1</option>
            </select>
            <input type="text" class="searchbox" value="설비개수" readonly/>
            <input type="text" class="valuebox" name = "facility_count" value=""/>
        </div>
        <div>
            <h3>설비 크기</h3>
            <input type="text" class="searchbox" value="크기(mm)" readonly />
            <input type="text" class="valuebox" name ="facility_size"/>
        </div>
        <br><br>
        <div id = "leak_size">
            <h3>누출공 크기</h3>
            <input type="text" class="valuebox" name = "user_input" placeholder="직접 입력" />
            <input type="text" class="valuebox" name = "option"placeholder="대안(설비크기의 20%)" readonly/>
			<input type="text" class="valuebox" name ="worst" placeholder="최악(설비크기의 100%)" readonly/>
            <button class ="submitbox" id="submitbox" type="button">적용</button>

        </div>
        
    </div>
	<div id ="cal_type">
	    <div id = "submitvalue2">
	        <h3 style="margin-right: 10px;">사고빈도 계산 결과</h3>
	        <input type="text" class="valuebox" readonly value = "직접 입력"/>
	        <input type="text" class="valuebox" readonly value = "설비크기의 20%"/>
	        <input type="text" class="valuebox" readonly value = "설비크기의 100%"/>
	    </div>
	    
	    <div id = "submitvalue3">
	        <input type="text" class="valuebox" name = "user_output" readonly />
	        <input type="text" class="valuebox" name = "option_output" readonly />
	        <input type="text" class="valuebox" name = "worst_output" readonly />
	        <button class ="nextbox" type="submit">다음</button>
	    </div>
</div>
</form>

</body>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
<script>





$('#submitbox').on("click", function () {
    var userInputValue = $('input[name="user_input"]').val(); //누출크기 - 사용자가 입력 값(필수 아님)
    var optionValue = $('input[name="option"]').val(); // 누출크기 - 대안(필수)
    var worstValue = $('input[name="worst"]').val(); // 누출크기 - 최악 (필수)
    var facility_typeValue = $('select[name="facility_type"]').val(); //설비정보
    var cal_typeValue = $('select[name="cal_type"]').val(); //공정물질
    var facility_envValue = $('select[name="facility_env"]').val(); //설비환경
    var facility_matarialValue = $('select[name="facility_matarial"]').val(); //설비재질
    var chemical_typeValue = $('select[name="chemical_type"]').val(); //공정물질
    var tempValue = $('input[name="temp"]').val(); //온도
    var barValue = $('input[name="bar"]').val(); //압력
    var flow_rateValue = $('input[name="flow_rate"]').val(); //유량
    var psm_gradeValue = $('select[name="psm_grade"]').val(); //곻정안전관리등급
    var facility_countValue = $('input[name="facility_count"]').val(); //설비개수
    var facility_sizeValue = $('input[name="facility_size"]').val(); //설비크기
    var user_inputValue = $('input[name="user_input"]').val(); //누출크기 직접입력
    var optionValue = facility_sizeValue * 0.2; //누출크기 대안
    var worstValue = facility_sizeValue * 1.0;//누출크기 최악
    
	//유효성 체크
	//온도 음수, 소수점 가능 float
  if (isNaN(parseFloat(tempValue))) {
   alert("(온도) 에 올바른 숫자를 입력하세요.");
   $('input[name="temp"]').focus();
   return false;
	}	
	//압력 0 이상 float
  if (isNaN(parseFloat(barValue)) || parseFloat(barValue) < 0 ) {
	   alert("(압력) 에 올바른 숫자를 입력하세요.");
	   $('input[name="bar"]').focus();
	   return false;
	}		
	//설비개수 0 이상 int
  if (isNaN(parseInt(facility_countValue)) || parseInt(facility_countValue) <= 0 ) {
	   alert("(설비개수) 에 0보다 큰 올바른 숫자를 입력하세요.");
	   $('input[name="facility_coun"]').focus();
	   return false;
	}
	//설비개수 int정수가 아닐 경우
  if (!Number.isInteger(parseFloat(facility_countValue))) {
	   alert("(설비개수) 에 정수를 입력하세요.");
	   $('input[name="facility_coun"]').focus();
	   return false;
	}
	//설비크기 1 이상 int
  if (isNaN(parseFloat(facility_sizeValue)) || parseFloat(facility_sizeValue) < 0 ) {
	   alert("(설비크기) 에 올바른 숫자를 입력하세요.");
	   $('input[name="facility_size"]').focus();
	   return false;
	}	
	//누출크기 0 이상 float
  if (isNaN(parseFloat(user_inputValue)) || parseFloat(user_inputValue) < 0 ) {
	   alert("(누출크기) 에 올바른 숫자를 입력하세요.");
	   $('input[name="user_input"]').focus();
	   return false;
  	}
	// 설비크기 > 누출크기
  if(parseFloat(user_inputValue) > parseFloat(facility_sizeValue)) {
	   alert("(누출공 크기)를 (설비크기)보다 작게 입력하세요.");
	   $('input[name="user_inputValue"]').focus();
	   return false;
	}	

  	// 데이터를 구조화
    var requestData = {
        data: [
            {
                cal_req: "azu",
                req_data: [
                    {
                        idx: 0,
                        value: {
                            facility_type: facility_typeValue,
                            process_condition: {
                                chemical_type: chemical_typeValue,
                                running_condition: {
                                    temp: parseFloat(tempValue),
                                    bar: parseInt(barValue),
                                    flow_rate: parseInt(flow_rateValue)
                                },
                                facility_count: parseInt(facility_countValue),
                                facility_env: facility_envValue,
                                facility_matarial: facility_matarialValue,
                                psm_grade: psm_gradeValue
                            },
                            facility_size: parseInt(facility_sizeValue),
                            leak_size: [
                                {
                                    cal_type: "option",
                                    select_rupture: 0,
                                    input_value: parseInt(optionValue)
                                },
                                {
                                    cal_type: "worst",
                                    select_rupture: 0,
                                    input_value: parseInt(worstValue)
                                },
                                {
                                    cal_type: "user_input",
                                    select_rupture: 0,
                                    input_value: parseInt(userInputValue)
                                }
                            ]
                        }
                    }
                ]
            }
        ]
    };

    // AJAX 요청
    $.ajax({
        type: "POST",
        url: "http://192.168.1.78:5000/chem_acc_impact",
        contentType: "application/json",
        data: JSON.stringify(requestData),
        success: function (data) {

         
                $('.valuebox[name="user_output"]').val(data.results.model_results[0].items[0].cal_value[0].acc_freq);
                $('.valuebox[name="option_output"]').val(data.results.model_results[0].items[0].cal_value[1].acc_freq);
                $('.valuebox[name="worst_output"]').val(data.results.model_results[0].items[0].cal_value[2].acc_freq);
         
            
        },
        error: function (request, status, error) {
            console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });
});





</script>
</html>