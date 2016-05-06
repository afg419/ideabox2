var Main = React.createClass({
  getInitialState(){
    return {ideas: []};
  },

  componentDidMount(){
    this.getIdeas();
  },

  formatReactIdeas(ideas){
    return ideas.map(function(idea){
      return (<Idea key={idea.id} body={idea.body} title={idea.title} quality={idea.quality} />);
    });
  },

  getIdeas(){
    $.ajax(
      {
        url: "api/v1/ideas",
        type: "GET",
        success: (reply) => {
          this.setState({ideas: this.formatReactIdeas(reply)});
          console.log("HEY", this.state.ideas);
        }
      }
    );
  },

  render(){
    ideas = this.state.ideas;
    return(
      <div className="container">
        {ideas}
      </div>
    );
  }
});
