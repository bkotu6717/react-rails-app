var Location = React.createClass({
  getInitialState() {
    return {
      location: this.props.location
    }
  },

  render() {
    return (
      <address>
        {this.state.location.city}<br/>
      </address>
    );
  }
});