var Exception = React.createClass({
  getInitialState() {
    return {
      exception: this.props.exception
    }
  },

  render() {
    return (
      <div className="well">
        <h1 className="text-center"> {this.state.exception } </h1>
      </div>
    );
  }
});