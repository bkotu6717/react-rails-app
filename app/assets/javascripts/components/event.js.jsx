var Event = React.createClass({
  getInitialState() {
    return {
      event: this.props.event,
      locations: this.props.event.locations
    }
  },

  render() {
    return (

       
        <div className="col-md-3">
          <div className="events">
            <div> {this.state.event.title} </div>
            <div> {this.state.event.description} </div>
            <div> {this.state.event.starts_at} </div>
            <div> {this.state.event.ends_at} </div>
            <div>{(this.state.locations.length > 0) ? <Locations locations={this.state.locations}/> : 'No Location specified'} </div>
          </div>
        </div>
    );
  }
});