var Event = React.createClass({
  getInitialState() {
    return {
      event: this.props.event
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
      </tr>
    );
  }
});