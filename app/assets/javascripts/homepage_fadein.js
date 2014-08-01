$(document).ready(function() {
	$('h1.headline, div#nav, div.begin').hide().fadeIn(1300);
	$('div.botton').mouseenter(function(){
		$$('div.botton').fadeTo('fast', 0.1)
	});
	$('div.botton').mouseleave(function(){
		$('div.botton').fadeTo('fast', 1)
	});
});	
