var AddVideoForm = React.createClass({
	//i like the rails select dropdown option better..will try to see if there's a js select tag where I can load options in later..
	render: function(){
		if(this.props.categories){
				var categorySelectOptions = this.props.categories.map(function(category, index){
					return(
					<option name="category_id" value={index}>{category.name}</option>
					)
				}.bind(this));
			}
		return(
			<form action="/videos">
				<label>Add this video to a category</label>
				<p>
				<select>
				{categorySelectOptions}
				</select>
				<p>
				<input type="submit" value="add video" />
				</p>
				</p>
			</form>
		)
	}
})