var SearchBar = React.createClass({
	
	render: function(){
		return (
			<div>
				<form action="/search" className="search-bar">
					<input type="text" name="q" placeholder="search for" />
					<input type="submit" />
				</form>
			</div>
		);
	}
});