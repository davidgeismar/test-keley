// app/assets/javascripts/components/product_list.js.jsx
var ProductList = React.createClass({
  render: function() {
    return (
      <div>
        {this.props.products.map(function(product){
          return <ProductListItem product={product} />;
        })}
      </div>
    );
  }
});
