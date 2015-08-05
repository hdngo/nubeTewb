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

	showResult: function(e){
		e.preventDefault();
		var data = {vid_id: e.target.parentElement.href.split('3000/')[1]}
		console.log(data)
		var path = '/search/result'
		var localResult = this;
		var request = $.ajax({
			url: path,
			data: data,
			method: 'get',
			dataType: 'json'
		})
		request.done(function(response){
			localResult.setState({resultVideo: response.video, categoryOptions: response.categories})
		})
		request.fail(function(response){
			console.log('bye')
		})
	},

	getInitialState:function(){
		return{
			searchQuery: null,
			searchResults: [],
			resultVideo: null,
			categoryOptions: [], 
		}
	},
	render: function(){

		if (this.state.searchResults){
			var videoResults = this.state.searchResults.map(function(video, index){
				return <div className="result-video-url">
					<a href={video.id} onClick={this.showResult} >
						<img src={video.snippet.data.thumbnails.default.url} />
					</a>

					<a href={video.id} ytId={video.id} onClick={this.showResult}><p>{video.snippet.data.title.substring(0,20)+"..."}</p></a>
				</div>
			}.bind(this));
		}
		if (this.state.resultVideo){
			var resultVid = this.state.resultVideo

			return (
				<div>
					<BackLink link='/categories' text="Back to Categories" />
					<form action="/search" className="search-bar" onSubmit={this.handleSearch}>
						<input type="text" name="q" ref="q"/>
						<input type="submit" />
					</form>
					<Video ytId={resultVid.id} categories={this.state.categoryOptions} />
				</div>
				)
		}
		else{
		return (

			<div>
				<BackLink link='/categories' text="Back to Categories" />
				<p>Search for videos</p>
				<form action="/search" className="search-bar" onSubmit={this.handleSearch}>
					<input type="text" name="q" ref="q"/>
					<input type="submit" value="search" />
				</form>
					<div className="results hidden-result-string" >
						<p>{'Results for ' +this.state.searchQuery}</p>
						{videoResults}
					</div>
			</div>
		);
	}
	}
});