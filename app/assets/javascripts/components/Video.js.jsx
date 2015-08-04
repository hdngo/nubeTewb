var Video = React.createClass({
	render: function(){
		return(
			<div class="body-div">
				<iframe width="560" height="315" src={"https://www.youtube.com/embed/" + this.props.ytId } frameborder="0" allowfullscreen></iframe>
			</div>
		)
	}
})

