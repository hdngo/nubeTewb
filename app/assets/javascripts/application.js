//= require jquery
//= require jquery_ujs

//= require_tree .
//= require_self


$(document).ready(function(){
	$('.result-video-thumb').on('click', function(e){
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

	$('.result-video-url').on('click', function(e){
		e.preventDefault();
		var data = $(this).attr('href');
		console.log(data)
	})

})



// React.render(
// 		<Taco />,
// 		document.getElementById('timer')
// 		);


