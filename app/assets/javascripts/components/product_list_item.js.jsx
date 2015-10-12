var ProductListItem = React.createClass({
  render: function() {
    return (
      <div className="post">
        <div className="post-upvote">TODO</div>
        <div className="post-body">
          <h3>
            <a href={this.props.product.url} target="_blank">{this.props.product.name}</a>
          </h3>
          <p>{this.props.product.tagline}</p>
        </div>
        <div className="post-controls">
          <div className="post-control">
            <div className="user-badge-container ">
              <img src={this.props.product.user.avatar_url} className="avatar"/>
            </div>
          </div>
        </div>
      </div>
    );
  }
});
