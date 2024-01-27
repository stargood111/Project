$(window).on('beforeunload', function(){
    // 페이지를 떠날 때 사이드 메뉴를 숨깁니다.
    $("#sideData").fadeOut();
    $("#sideData").hide();

});
$(document).ready(function(){
    // 헤더 서브 메뉴 펼치기
    $(".headerMenu > li").mouseover(function(){
        $(this).find(".subMenu").stop().slideDown(500);
        $(this).addClass("on");
    });
    $(".headerMenu > li").mouseout(function(){
        $(this).find(".subMenu").stop().slideUp(500);
        $(this).removeClass("on");
    });

    // 셀렉트 박스
    $("select").change(function(){
        $("select option").removeClass("selectedOption");
        $(this).find("option:selected").addClass("selectedOption");
    });
    $(".selectWrap").click(function(){
        $(this).toggleClass("active").siblings().removeClass("active");
    });

    // Depth3 사이드 메뉴
    $(".subTab .board").click(function(){
        var sidedt_name = $(this).attr("data-name");

        $("#sideData").stop().fadeIn();
        $("#sideData").addClass("active");

        $("."+sidedt_name).stop().fadeIn().siblings().hide();

        $("#sideData .dataArea").scrollTop(0)
    });

    $("#closeBtn, #sideData .sideDataBG").click(function(){
        $("#sideData").stop().fadeOut();
        $("#sideData").removeClass("active");
    });

    // Depth3 사이드 메뉴 컨텐츠 넘기기
    $(".pagination .prevBtn").click(function() {
        var currentTab = $(".dataWrap .sideTab:visible");
        var prevTab = currentTab.prev(".sideTab");
    
        if (prevTab.length === 0) {
            return;
        }
    
        currentTab.hide();
        prevTab.show();

        prevTab.find(".dataArea").scrollTop(0);
    });
    $(".pagination .nextBtn").click(function() {
        var currentTab = $(".dataWrap .sideTab:visible");
        var nextTab = currentTab.next(".sideTab");
    
        if (nextTab.length === 0) {
            return;
        }
    
        currentTab.hide();
        nextTab.show();

        nextTab.find(".dataArea").scrollTop(0);
    });

    //.board 갯수에 따른 .boardWrap 사이즈 변경
    boardLayout()

    function boardLayout() {
        var boardItems =  $(".boardWrap").find(".board");
        var numBoard = boardItems.length;
        if (numBoard == 2) {
            $(".boardWrap").addClass("twoColumns");
        } else if (numBoard == 1) {
            $(".boardWrap").addClass("oneColumn");
        }
    }
});

