var SearchBar = React.createClass({
	handleSearch:function(e){
		e.preventDefault();
		var query = React.findDOMNode(this.refs.q).value.trim();
		if (!query){
			return;
		}
		$('.hidden-result-string').removeClass('hidden-result-string')
		var path = e.target.action
		var data = React.findDOMNode(this.refs.q).value.trim();
		this.setState({searchQuery: data})
		var localResults = this;
		var searchRequest = $.ajax({
			url: path,
			data: {q: data},
			method: 'get',
			dataType: 'json'
		})
		searchRequest.done(function(results){
			console.log('back at it')
			console.log(results)
			localResults.setState({searchResults: results})
		})
		searchRequest.fail(function(results){
			console.log('nilly willy')
		})
		React.findDOMNode(this.refs.q).value = ''
	},
	getInitialState:function(){
		return{
			searchQuery: null,
			searchResults: []
		}
	},
	render: function(){
		if (this.state.searchResults){

			var videoResults = this.state.searchResults.map(function(video, index){
				return <div className="result-video-url">
					<a href={video.id}>
						<img src={video.snippet.data.thumbnails.default.url} />
					</a>

					<p>hello</p>
				</div>
			});
		}
		return (

			<div>
				<form action="/search" className="search-bar" onSubmit={this.handleSearch}>
					<input type="text" name="q"  ref="q"/>
					<input type="submit" />
				</form>
					<div className="results hidden-result-string" >
						<p>{'Results for ' +this.state.searchQuery}</p>
						{videoResults}
					</div>
			</div>
		);
	}
});