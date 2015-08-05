//= require jquery
//= require jquery_ujs

//= require react
//= require react_ujs
//= require_tree ./components
//= require_tree .
//= require_self

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
      <CategoryBox request={this.request }/>
      </div>
		);
	}
});

React.render(<App />, document.body);
