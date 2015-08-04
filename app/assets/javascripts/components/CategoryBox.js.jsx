var CategoryBox = React.createClass({
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
  		categoryId: null
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
		if(this.state.categoryId === null){
		var List = this.state.index.map(function(item,index){
      return <li key={item.id}><a key={"category"+item.id}href={'/categories/'+item.id} id={item.id} onClick={this.showCategory}>{item.name}</a></li>
		}.bind(this));
		}
		else{
			var List = this.state.videoIndex.map(function(video, index){
				return <div className="video-thumb">
					<a key={video.id} href={'/categories/'+video.category_id+'/videos/'+video.id}><img key={"vid"+video.id+"Img"} src={video.thumbnail} alt="video image" /></a>

					<a key={"vid"+video.id+"Title"} href={'/categories/'+video.category_id+'/videos/'+video.id}><p>{video.title.substring(0,20)+"..."}</p></a>
				</div>
			})
		}
		return (
			<div>{List}</div>
		);
	}
});