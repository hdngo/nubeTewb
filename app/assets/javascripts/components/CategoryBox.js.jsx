var CategoryBox = React.createClass({
	showVideo: function(e){
		e.preventDefault();
		var localVideo = this;
		var path = e.target.parentElement.href;
		var request = $.ajax({
			url: path,
			method: 'get',
			dataType: 'json'
		});
		request.done(function(response){
			console.log('hello')
			console.log(response.video)
			localVideo.setState({video: response.video, videoCategory: response.category})
		});
		request.fail(function(response){
			console.log('goodye')
		})
	},
	showCategory: function(e){
		e.preventDefault();
		var path = e.target.href;
		
		var localCategory = this;

		var categoryRequest = $.ajax({
			url: path,
			method: 'get',
			dataType: 'json'
		});

		categoryRequest.done(function(response){
			localCategory.setState({
				categoryId: response.category.id,
				videoIndex: response.videos
			});
		});
		categoryRequest.fail(function(response){
			console.log("You are a good person, but failed to ajax")
		});
	},

  getInitialState: function(){
  	return {
  		index: [],
  		videoIndex:[],
  		categoryId: null,
  		video: null,
  		videoCategory: null
  	}
  },

	componentDidMount: function(){
		this.makeCategoriesIndex();
	},

	makeCategoriesIndex: function(){
		var categoryList = this;
		this.props.request('/categories', 'get')
		          .then(function(serverJson){
			          categoryList.setState({
				          index: serverJson
			        });
		})
	},
	
	render: function() {
		if(this.state.video === null){
		if(this.state.categoryId === null){
		var Content = this.state.index.map(function(item,index){
      return (
      <li key={item.id}>
      	<a key={"category"+item.id}href={'/categories/'+item.id} id={item.id} onClick={this.showCategory}>{item.name}
				</a>
  		</li>
  		)
		}.bind(this));
		}
		else{
			var Content = this.state.videoIndex.map(function(video, index){
				return (
				<div className="video-thumb" >
					<a onClick={this.showVideo} id={video.id} key={video.id} href={'/categories/'+video.category_id+'/videos/'+video.id} >
						<img key={"vid"+video.id+"Img"} src={video.thumbnail} alt="video image" />
					</a>

					<a onClick={this.showVideo} id={video.id} key={"vid"+video.id+"Title"} href={'/categories/'+video.category_id+'/videos/'+video.id} ><p>{video.title.substring(0,20)+"..."}</p></a>
				</div>
				)
			}.bind(this));
		}
		return (
			<div>
				<SearchBar />
				<div>{Content}</div>
			</div>
		);
		}
		else{
			return (
				<div>
				<SearchBar />
				<Video ytId={this.state.video.yt_id} title={this.state.video.title} likes={this.state.video.likes} channel={this.state.video.channel} description={this.state.video.description} dislikes={this.state.video.dislikes} categoryId={this.state.videoCategory.id} category={this.state.videoCategory.name} />
				</div>
				// would like to know if i can simply pass in an object rather than extract each individual attribute and have so many props..
				)
		}
	}
});