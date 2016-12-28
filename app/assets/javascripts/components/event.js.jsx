var Event = React.createClass({
  getInitialState() {
    return {
      event: this.props.event,
      locations: this.props.event.locations
    }
  },

  render() {
    return (
      <tr>
        <td> {this.state.event.id} </td>
        <td> {this.state.event.title} </td>
        <td> {this.state.event.description} </td>
        <td> <Formatdate event_date={this.state.event.starts_at} /> </td>
        <td> <Formatdate event_date={this.state.event.ends_at} /> </td>
        <td>
         {(this.state.locations.length > 0) ? <Locations locations={this.state.locations}/> : 'No Location specified'}
        </td>
      </tr>
    );
  }
});