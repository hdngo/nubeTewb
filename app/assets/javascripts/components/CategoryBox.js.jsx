var CategoryBox = React.createClass({
	showCategory: function(e){
		e.preventDefault();
		console.log("hello")
		//when a category link is clicked, set the category state to be that category's id
		this.setState({category: e.target.id});
		console.log(e.target.id)
		console.log(e.target.href)
		var path = e.target.href;
		var request = $.ajax({
			url: path,
			type: 'get',
			dataType: 'json'
		});
		request.done(function(response){
			console.log('sup');
			console.log(response)
		});
		request.fail(function(response){
			console.log('eh')
		})
	},
  getInitialState: function(){
  	return {
  		index: [],
  		category: null,
  		page: null
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
		if(this.state.category === null){
			var Content = this.state.index.map(function(item,index){
      return <li key={item.id}><a href={'/categories/'+item.id} id={item.id} onClick={this.showCategory}>{item.name}</a></li>
		}.bind(this));
		}
		else if(this.state.category){
			var Content = "hello";
		}
		
		return (
			<div>{Content}</div>
		);
	}
});