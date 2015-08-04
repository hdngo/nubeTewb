var Video = React.createClass({
	render: function(){
		return(
			<div class="body-div">
				<iframe width="560" height="315" src={"https://www.youtube.com/embed/" + this.props.ytId } frameborder="0" allowfullscreen></iframe>

				<h2>{this.props.title}</h2>
				<p>{'Uploaded by '+this.props.channel}</p>
				<p>{'Likes: ' +this.props.likes + '    Dislikes: ' + this.props.dislikes} </p>
				
				<p>{'Listed under ' +this.props.category}</p>
				<h4>Description:</h4>
				<p>{this.props.description}</p>

					
				<BackLink link='/categories' text="Back to Categories" />	

			</div>
		)
	}
})

