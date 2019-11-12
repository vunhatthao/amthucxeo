function $$$(id) {
	return document.getElementById(id);
}
function	Forward(url) {
	window.location.href = url;
}
function	_postback() {
	return void(1);
}

//----------------------------------------------------------------------------------------------------------------------
function ajaxFunction() {
	var xmlHttp=null;
	try {
		// Firefox, Internet Explorer 7. Opera 8.0+, Safari.
		xmlHttp = new XMLHttpRequest();
	}
	catch (e) {
		// Internet Explorer 6.
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e) {
			try{
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e) {
				return false;
			}
		}
	}
}

//----------------------------------------------------------------------------------------------------------------------
/**
 *
 * @param obj
 * @returns {string}
 */
function $query(obj) {
	var query = "";
	$(obj).find("input").each(function(i){
		var t = $(obj).find("input").eq(i);
		if ((t.attr("type") != "checkbox") && (t.attr("type") != "button") && (t.attr("type") != "radio") ) {
			if (t.attr("type") != "password") {
				query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
			} else {
				query += "&"+t.attr("name")+"="+document.getElementById(t.attr("name")).value;
			}
		}
		else {
			if(t.attr("type") == "checkbox") {
				if (t.is(":checked"))
					query += "&"+t.attr("name")+"="+t.attr("value");
			}
			else if (t.attr("type") == "radio") {
				if (t.is(":checked"))
					query += "&"+t.attr("name")+"="+t.attr("value");
			}
		}
	});
	$(obj).find("textarea").each(function(i) {
		var t = $(obj).find("textarea").eq(i);
		query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
	});
	$(obj).find("select").each(function(i) {
		var t = $(obj).find("select").eq(i);
		query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
	});

	return query.substring(1);
}

//----------------------------------------------------------------------------------------------------------------------
function $query_unt(obj) {
	var query = "";
	$(obj).find("input").each(function(i){
		var t = $(obj).find("input").eq(i);
		if((t.attr("type") != "button") && (t.attr("type") != "submit") && (t.attr("type") != "reset") && (t.attr("type") != "hidden")) {
			if ((t.attr("type") != "checkbox") && (t.attr("type") != "radio") ) {
				t.val('');
			} else {
				t.attr("checked", false);
			}
		} else {}
	});
	$(obj).find("textarea").each(function(i) {
		var t = $(obj).find("textarea").eq(i);
		t.val('');
	});
	return true;
}
//----------------------------------------------------------------------------------------------------------------------
function showLoader() {
	$("#_loading").html("<div style=\"position: fixed; top: 50%; right: 50%; text-align: center; background: transparent; z-index: 999999999;\"><div class=\"windows8\"> <div class=\"wBall\" id=\"wBall_1\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_2\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_3\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_4\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_5\"> <div class=\"wInnerBall\"> </div> </div> </div></div>").hide().fadeIn(10);
	block = true;
}

//----------------------------------------------------------------------------------------------------------------------
function closeLoader() {
	$("#_loading").html("").hide().fadeOut(100);
	block = false;
}

function scrollPage() {
	if ($('#scroll-page').length) {
		$('html, body').animate({
			scrollTop: parseInt($("#").offset().top)
		}, 2000);
	}

}
$(window).on("load", function () {
	scrollPage();
});


function backToTop() {

	if ($('#go-top').length) {

		if ($(window).scrollTop() > 100) {

			$('#go-top').addClass('show-backtotop');

		} else {

			$('#go-top').removeClass('show-backtotop');

		}

	}

}

jQuery(window).on('scroll', function () {

	(function ($) {

		backToTop();

	})(jQuery);

});
//----------------------------------------------------------------------------------------------------------------------
function showResult(type,data) {
	closeLoader();
	$("#"+type+"").html(data).hide().fadeIn(100);
	block = false;
}

//----------------------------------------------------------------------------------------------------------------------
$(document).ready(function() {
	$(window).scroll(function() {
		if($(this).scrollTop() > 50){
			$('#go-top').stop().animate({
				bottom: '183px'
			}, 500);
		}
		else{
			$('#go-top').stop().animate({
				bottom: '-120px'
			}, 500);
		}
	});
	$('#go-top').click(function() {
		$('html, body').stop().animate({
			scrollTop: 0
		}, 500, function() {
			$('#go-top').stop().animate({
				bottom: '-120px'
			}, 500);
		});
	});
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 150 && window.innerWidth > 960) {
				$('nav.navbar').addClass('fixed');
			} else {
				$('nav.navbar').removeClass('fixed');
			}
		});
	});
});

//----------------------------------------------------------------------------------------------------------------------
function add_cart(){
	var txt = '';
	var lang = $('html').attr('lang');
	if(lang=='kr') txt = '장바구니에 제품을 추가 하시겠습니까?';
	else txt = 'Thêm vào danh sách thực đơn';

	$('.btn_add_card').on('click',function () {
		var id = parseInt($(this).attr('data-id'));
		confirm(txt, function() {
			showLoader();
			if(this.data == true) {
				$.ajax({
					url:'/action.php',
					type: 'POST',
					data: 'url=add_cart&id='+id,
					dataType: "json",
					success: function(data) {
						showResult('count_cart', data.sl);
					}
				});
			} else {
				closeLoader();
				return false;
			}
		});
		return false;
	});

}
function select_level1(el, id) {
	showLoader();
	$('ul li.active').each(function() {
		$(this).removeClass('active');
	});
	el.addClass("active");
	$.ajax({
		url: '/action.php',
		type: 'POST',
		data: {
			url: 'select_level1',
			id: id
		},
		dataType: 'html',
		async: false,
		success: function(data){
			showResult('select', data);
		}
	});
	return false;
}
(function($) {
	$.fn.menumaker = function(options) {
		var navigation = $(this), settings = $.extend({
			title: "",
			format: "dropdown",
			sticky: false
		}, options);

		return this.each(function() {
			navigation.find('li ul').parent().addClass('has-sub');
			multiTg = function() {
				navigation.find(".has-sub ul li.active").parents('.has-sub').addClass('active');
			};
			multiTg();
		});
	};
	$(document).ready(function(){
		$(document).ready(function() {
			$("nav .navigation").menumaker({
				title: "",
				format: "multitoggle"
			});
		});
	});
})(jQuery);
//----------------------------------------------------------------------------------------------------------------------
function sendMail(type, id) {
	var dataList = $query('#'+id);
	showLoader();
	$.ajax({
		url:'/action.php',
		type: 'POST',
		data: 'url='+type+'&'+dataList,
		dataType: "html",
		success: function(data){
			closeLoader();
			$query_unt('#'+id);
			alert(data);
		}
	});
	return false;
}

function sendHome(type, id, lh) {
	var dataList = $query('#' + id);
	showLoader();
	$.ajax({
		url:'/action.php',
		type: 'POST',
		data: 'url='+type+'&'+dataList+"&lang="+lh,
		dataType: "html",
		success: function(data){
			closeLoader();
			$query_unt('#' + id);
			//alert(data);
			alert(data, function() {
				window.location.reload();
			});
		}
	});
	return false;
}
function sendRegEmail() {
    var email = document.forms['newsletter']['email'].value;
    var email_filter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
    var test = true;
    test = email_filter.test(email);
    if(test==false) {
        alert('Địa chỉ E-mail không hợp lệ.');
        return false;
    } else {
        showLoader();
        $.ajax({
            url:'/action.php',
            type: 'POST',
            data: 'url=register_email&email='+email,
            dataType: "html",
            success: function(data){
                closeLoader();
                $('#_reg_email').val('');
                alert(data);
            }
        });
    }
    return false;
}

//----------------------------------------------------------------------------------------------------------------------
function check_contact(){
	var input = document.forms['frm_contact'].getElementsByTagName('input');
	var txtarea = document.forms['frm_contact'].getElementsByTagName('textarea');
	var err_field = $("[name='lang_field']").val();
	var err_email = $("[name='lang_email']").val();
	var err_phone = $("[name='lang_phone']").val();

	var inputs = new Array();
	for(var i=0; i<(input.length+txtarea.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=txtarea[i-input.length];
	}
	var run_onchange = false;
	var email_filter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var name = inputs[i].getAttribute('name');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if( value == ''){
				if(name != 'tell' && name != 'company'  && name != 'send_contact') {
					span.innerHTML = err_field;
				}
			}
			if(name == 'email' && value != '') {
				var return_val=email_filter.test(value);
				if(return_val==false){span.innerHTML = err_email;}
			}
			if(name == 'tell' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_phone;}
				if(isNaN(value) == false && value.length < 10){span.innerHTML = err_phone;}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid #ff6e69';
			}
		}
		return !errors;
	}

	var register = document.getElementById('_send_contact');
	register.onclick = function(){
		return valid();
	}

	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #cecfce';
				valid();
			}
		}
	}
}

//----------------------------------------------------------------------------------------------------------------------
function check_booking(){
	var input = document.forms['frm_booking'].getElementsByTagName('input');
	var txtarea = document.forms['frm_booking'].getElementsByTagName('textarea');
	var err_field = $("[name='lang_field']").val();
	var err_email = $("[name='lang_email']").val();
	var err_phone = $("[name='lang_phone']").val();

	var inputs = new Array();
	for(var i=0; i<(input.length+txtarea.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=txtarea[i-input.length];
	}
	var run_onchange = false;
	var email_filter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var name = inputs[i].getAttribute('name');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}
			var input_unt = ['hotel', 'room', 'content', 'send_booking',  'date_end' , 'hotel_date_end'];
			var cke = input_unt.indexOf(name);
			if( value == '' && cke < 0){
				span.innerHTML = err_field;
			}
			if(name == 'email' && value != '') {
				var return_val = email_filter.test(value);
				if(return_val == false){ span.innerHTML = err_email; }
			}
			if(name == 'phone' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_phone;}
				if(isNaN(value) == false && value.length < 10){span.innerHTML = err_phone;}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid #ff6e69';
			}
		}
		return !errors;
	}

	var register = document.getElementById('_send_booking');
	register.onclick = function(){
		return valid();
	}

	for(var i=0; i<inputs.length; i++){
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #cecfce';
				valid();
			}
		}
	}
}

$(document).ready(function() {
	$("#btn-ordered").click(function(){
		var collapse_content_selector = $(this).attr('href');
		var toggle_switch = $(this);
		$(collapse_content_selector).toggle(function(){
			if($(this).css('display')=='none'){
				toggle_switch.val('Giao hàng');
			}else{
				toggle_switch.val('Đóng');
			}
		})
	});
});

//----------------------------------------------------------------------------------------------------------------------
$(document).ready(function() {
	$(".gp-fancy-box").fancybox({
		openEffect	: 'elastic',
		closeEffect	: 'elastic',
		prevEffect	: 'none',
		nextEffect	: 'none',
		arrows      : false,
		closeBtn	: false,
		helpers     : {
			title	: { type : 'inside' },
			thumbs	: {
				width	: 50,
				height	: 50
			},
			buttons	: {}
		}
	});
	$(".fancy-box").fancybox({
		openEffect	: 'elastic',
		closeEffect	: 'elastic'
	});
	$(function() {
		var byRow = $('body').hasClass('test-rows');
		// apply matchHeight to each item container's items
		$('.item-news').each(function() {
			$(this).children('.description').matchHeight({
				byRow: byRow
			});
		});
		// test property
		$('.item-news .description').matchHeight({
			property: 'min-height'
		});
	});
	add_cart();
});

function open_booking(id, lh) {
	var dataList = $query('#');
	showLoader();
	$.ajax({
		url:'/action.php',
		type: 'POST',
		data: 'url=booking&'+dataList+"&lang="+lh,
		dataType: "html",
		success: function(data){
			showResult(id, data);
			$('#'+id).modal();
		}
	});
	return false;
}

// ------------------------
function sanpham(val,id){
	if(val != ""){
		$('.nh_'+id).select()
		var dataList = $query('#amthuc');
		$.ajax({
			url:'/action.php',
			type: 'POST',
			data: 'url=amthuc&'+dataList,
			dataType: "html",
			cache: false,
			success: function(data){
				$('#thucnguyen').html(data)
			}
		});
	}else{
	}
}

$(document).ready(function() {
	var owl = $('.list-news-pro');
	owl.owlCarousel({
		items: 1,
		loop: false,
		margin: 0,
		nav: false,
		animateOut: 'fadeOutLeft',
		animateIn: 'fadeInRight',
		navText: [ '', '' ],
		autoplay: true,
		autoplayTimeout: 3000,
		autoplayHoverPause: true,
		smartSpeed:450,
		dots:true,
		responsive:{
			1000:{
				items:1,
				nav: true
			}
		}
	});
})

$(document).ready(function() {
	var owl = $('.gallery-home');
	owl.owlCarousel({
		items: 3,
		loop: false,
		margin: 8,
		nav: false,
		navText: [ '', '' ],
		autoplay: false,
		autoplayTimeout: 3000,
		autoplayHoverPause: true,
		smartSpeed:450,
		dots:false,
		responsive:{
			0:{
				items:2,
				margin: 15,
				nav: false,
				dots:true
			},
			361:{
				items:2,
				margin: 15,
				nav: false,
				dots:true
			},
			451:{
				items:2,
				nav: false,
				margin: 20,
				dots:true
			},
			600:{
				items:3,
				dots:true
			},
			800:{
				items:3,
				dots:true
			},
			1000:{
				items:3,
				nav: true
			}
		}
	});
})

$(document).ready(function() {
	var owl = $('.list-our-team');
	owl.owlCarousel({
		items: 4,
		loop: false,
		margin: 49,
		nav: false,
		autoplay: true,
		autoplayTimeout: 3000,
		autoplayHoverPause: true,
		smartSpeed:450,
		dots:true,
		responsive:{
			0:{
				items:1,
				nav: false,
				margin: 0,
				dots:true
			},
			329:{
				items:2,
				nav: false,
				margin: 20,
				dots:true
			},
			450:{
				items:3,
				nav: false,
				margin: 20,
				dots:true
			},
			765:{
				items:4,
				dots:true
			},
			830:{
				items:4,
				dots:true
			},
			1000:{
				items:4,
				nav: false
			}
		}
	});
})
$(document).ready(function() {
	var owl = $('.list-hinh');
	owl.owlCarousel({
		items: 1,
		loop: false,
		margin: 0,
		nav: false,
		autoplay: true,
		autoplayTimeout: 4000,
		autoplayHoverPause: true,
		smartSpeed:450,
		dots:true,
		responsive:{
			0:{
				items:1,
				nav: false,
				margin: 0,
				dots:true
			},
			329:{
				items:2,
				nav: false,
				margin: 20,
				dots:true
			},
			450:{
				items:3,
				nav: false,
				margin: 20,
				dots:true
			},
			765:{
				items:4,
				dots:true
			},
			830:{
				items:1,
				dots:true
			},
			1000:{
				items:1,
				nav: false
			}
		}
	});
})

//----------------------------------------------------------------------------------------------------------------------
function check_order(){
	var input = document.forms['frmOrder'].getElementsByTagName('input');
	var txtarea = document.forms['frmOrder'].getElementsByTagName('textarea');

	var err_field = $('#txtEnterField').val();
	var err_email = $('#txtEnterMail').val();
	var err_tell = $('#txtEnterTell').val();

	var inputs = new Array();
	for(var i=0; i<(input.length+txtarea.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=txtarea[i-input.length];
	}
	var run_onchange = false;
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var id = inputs[i].getAttribute('id');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if( value == ''){
				if(id != 'txtContent'  && id != 'btnSendOrder') {
					span.innerHTML = err_field;
				}
			}
			if(id == 'txtEmail' && value != '') {
				var returnval=emailfilter.test(value);
				if(returnval==false){span.innerHTML = err_email;}
			}
			if(id == 'txtTell' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_tell;}
				if(isNaN(value) == false && value.length < 10){span.innerHTML = err_tell;}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid #ff6e69';
			}
		}
		return !errors;
	}

	var register = document.getElementById('btnSendOrder');
	register.onclick = function(){
		return valid();
	}

	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #e0e1e0';
				valid();
			}
		}
	}
}