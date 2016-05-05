var Idea = React.createClass({
  render(){
    return(<div className="idea container">
            <h3>{this.props.title}</h3>
            <h3>{this.props.body}</h3>
            <h3>{this.props.quality}</h3>
          </div>);
  }
});
