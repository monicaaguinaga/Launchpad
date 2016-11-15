$(document).on("turbolinks:load",function(){
	$(function(){
		var images = ['http://i.imgur.com/GlQxlzb.jpg','http://i.imgur.com/jgZV4Fl.jpg',  'http://i.imgur.com/GB9EQJR.jpg'];
		$('body').css({'background-image': 'url(' + images[Math.floor(Math.random() * images.length)] + ')'});
	});
});
