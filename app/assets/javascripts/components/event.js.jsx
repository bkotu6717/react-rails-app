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
        <td> {this.state.event.starts_at} </td>
        <td> {this.state.event.ends_at} </td>
        <td>
          <address>
            Visit us at:<br/>
            Example.com<br/>
            Box 564, Disneyland<br/>
            Chennai<br/>
          </address>
        </td>
      </tr>
    );
  }
});