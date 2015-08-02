// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function(){
	$('.video-thumb').on('click', function(e){
		e.preventDefault();
		var videoId = $(this).attr('href');
		console.log(videoId)
		var path = '/search/result'
		console.log(path)
		var request = $.ajax({
			url: path,
			data: {vid_id: videoId},
			method: 'get'
			// dataType: 'json'
		}).done(function(response){
			console.log('yee');
			$('.body-div').remove();
			$('body').append(response);
		})
		.fail(function(response){
			console.log('boo');
			console.log(response.somekey)
		})
	})

	$('.video-url').on('click', function(e){
		e.preventDefault();
		var data = $(this).attr('href');
		console.log(data)
	})
})