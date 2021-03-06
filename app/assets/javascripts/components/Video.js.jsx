var Video = React.createClass({
	render: function(){
		if(!this.props.channel){
			if(this.props.categories){
			return(

			<div className="video-content">
			<p></p>
				<iframe width="560" height="315" src={"https://www.youtube.com/embed/" + this.props.ytId } frameborder="0" allowfullscreen></iframe>
				<AddVideoForm categories={this.props.categories} ytId={this.props.ytId}/>
			</div>
		)
		}
		
		}

		else{
			return(
			<div className="video-content">
			<p></p>
				<iframe width="560" height="315" src={"https://www.youtube.com/embed/" + this.props.ytId } frameborder="0" allowfullscreen></iframe>

				<h2>{this.props.title}</h2>
				<p>{'Uploaded by '+this.props.channel}</p>
				<p>{'Likes: ' +this.props.likes + '    Dislikes: ' + this.props.dislikes} </p>
				
				<p>{'Listed under ' +this.props.category}</p>
				<h4>Description:</h4>
				<p className="vid-description">{this.props.description}</p>

			</div>
		)
		}

	}
})

