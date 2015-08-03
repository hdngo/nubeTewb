//= require jquery
//= require jquery_ujs

//= require react
//= require react_ujs
//= require_tree ./components
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



var App = React.createClass({
	request: function(url, method, data){
		return new Promise(function(resolve, reject){
			var request = $.ajax({
				url: url,
				method: method,
				data: data,
				dataType: 'json'
			});
			request.done(function(serverData){
				resolve(serverData);
			});
			request.fail(function(serverData){
				reject(serverData);
			});
	  })
	},
	render: function(){
		return (
			<div>
			<SearchBar />
      <CategoryBox request={this.request }/>
      </div>
		);
	}
});

React.render(<App />, document.body);
