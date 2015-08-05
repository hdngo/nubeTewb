var AddVideoForm = React.createClass({
	//i like the rails select dropdown option better..will try to see if there's a js select tag where I can load options in later..
	addVideo: function(e){
		e.preventDefault();
		console.log(e.target)
		var category_id = e.target.childNodes[1].value;
		console.log(category_id)
		var youtubeVidId = this.props.ytId;
		var path = e.target.action.split('3000')[1];
		var request = $.ajax({
			url: path,
			data: {category_id: category_id, yt_vid_id: youtubeVidId},
			method: 'post',
			dataType: 'json'
		});
		request.done(function(response){
			console.log('heyyy');
		});
		request.fail(function(response){
			console.log('fuuuu');
		});
	},

	render: function(){
		if(this.props.categories){
				var categorySelectOptions = this.props.categories.map(function(category, index){
					return(
					<option name="category_id" value={index+1}>{category.name}</option>
					)
				}.bind(this));
			}
		return(
			<form action="/videos" onSubmit={this.addVideo}>
				<label>Add this video to a category</label>
				<select>
				{categorySelectOptions}
				</select>
				<input type="submit" value="add video" />
			</form>
		)
	}
})