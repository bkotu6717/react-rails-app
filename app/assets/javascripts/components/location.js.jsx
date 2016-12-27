var Location = React.createClass({
  getInitialState() {
    return {
      event: this.props.location
    }
  },

  render() {
    return (
      <div>
        <address>
          {this.state.location.city}
          {this.state.location.country}
          {this.state.location.pin}
        </address>
      </div>
    );
  }
});