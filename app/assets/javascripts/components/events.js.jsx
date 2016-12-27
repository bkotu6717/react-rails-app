// app/assets/javascripts/components/employees.js.jsx
var Events = React.createClass({

  render: function() {
    events = this.props.presenter.data.map( function(event) {
      return (
         <Event event={event} key={event.id} />
      );
    });
    return (
      <div>
       	<h1> Events </h1>
       	<div id="events">

       		<table className="table table-striped table-hover">
            <thead>
              <tr>
                <th> Id </th>
                <th> Title </th>
                <th> Description </th>
                <th> Starts At </th>
                <th> Ends At </th>
                <th> Location </th>
              </tr>
            </thead>
            <tbody>
              { events }
            </tbody>
          </table>
       	</div>
      </div>
    );
  }
});