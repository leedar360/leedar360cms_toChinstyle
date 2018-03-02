$(function(){
	$(".nav li").mouseover(function(){
		$(".nav li .erji_nav").hide()
		$(this).find("span a").css("color","#c90000")
		$(this).find(".erji_nav").show()
	})
	$(".nav li").mouseout(function(){
		$(".nav li .erji_nav").hide()
		$(".nav li span a").css("color","#616161")
	})
	$(".nav li .erji_nav").mouseover(function(){
		$(".nav li .erji_nav").hide()
		$(this).show()
	})
	$(".nav li .erji_nav").mouseout(function(){
		$(".nav li .erji_nav").hide()
	})
})