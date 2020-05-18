import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  static var id = 'productDetails';
  final productDetail;
  final productNewPrice;
  final productOldPrice;
  final productPicture;
  ProductDetails(
      {this.productPicture,
      this.productDetail,
      this.productNewPrice,
      this.productOldPrice});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String size = '10';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Ecommerce App'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('SearchPressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.productPicture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productDetail,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '\$${widget.productOldPrice}',
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '\$${widget.productNewPrice}',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('Choose the Size'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('Choose the Color'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('Choose the Quantity'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Qty'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  child: Text('Buy Now'),
                  onPressed: () {},
                ),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.redAccent,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.redAccent,
                onPressed: () {},
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Product Details'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(':   ${widget.productDetail}'),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('Brand Z'),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Condition',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('NEW'),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text('Similar Products'),
          ),
          Container(
            child: RecentProducts(),
            height: 320.0,
          ),
        ],
      ),
    );
  }
}

class RecentProducts extends StatefulWidget {
  @override
  _RecentProductsState createState() => _RecentProductsState();
}

class _RecentProductsState extends State<RecentProducts> {
  List<Map<String, Object>> productList = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'oldPrice': 100,
      'price': 50,
    },
    {
      'name': 'Dress',
      'picture': 'images/products/dress1.jpeg',
      'oldPrice': 150,
      'price': 100,
    },
    {
      'name': 'Shoes',
      'picture': 'images/products/shoe1.jpg',
      'oldPrice': 50,
      'price': 20,
    },
    {
      'name': 'Skirt',
      'picture': 'images/products/skt1.jpeg',
      'oldPrice': 30,
      'price': 20,
    },
    {
      'name': 'Heels',
      'picture': 'images/products/hills1.jpeg',
      'oldPrice': 50,
      'price': 20,
    },
    {
      'name': 'Pants',
      'picture': 'images/products/pants1.jpg',
      'oldPrice': 50,
      'price': 20,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SimilarSingleProd(
          productName: productList[index]['name'],
          productPicture: productList[index]['picture'],
          oldPrice: productList[index]['oldPrice'],
          newPrice: productList[index]['price'],
        );
      },
    );
  }
}

class SimilarSingleProd extends StatelessWidget {
  SimilarSingleProd({
    this.newPrice,
    this.oldPrice,
    this.productName,
    this.productPicture,
  });
  final productName;
  final productPicture;
  final oldPrice;
  final newPrice;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    productPicture: productPicture,
                    productDetail: productName,
                    productNewPrice: newPrice,
                    productOldPrice: oldPrice,
                  ),
                ),
              );
            },
            child: GridTile(
              footer: Container(
                height: 50.0,
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      '\$$newPrice',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      '\$$oldPrice',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ),
              ),
              child: Image.asset(
                productPicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
