package com.example.dna1.dto;

import lombok.Data;

@Data
public class DnaDto {

	 // 행정구역코드
    private String areacode;

    // 시도
    private String step1;

    // 시군구
    private String step2;

    // 읍면동
    private String step3;

    // 발표 일자
    private String baseDate;

    // 발표 시각
    private String baseTime;

    // 예보지점 (좌표)
    private String gridx;
    // 예보지점 (좌표)
    private String gridy;
    //위도(시)
    private String latitudehour;
    //경도(시)
    private String longitudehour;
    //위도(분)
    private String latitudemin;
    //경도(분)
    private String longitudemin;
}
