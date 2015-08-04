var BackLink = React.createClass({
	render: function(){
		return(
			<div>
				<a href={this.props.link}>{this.props.text}</a>
			</div>
		)
	}
});