import 'package:flutter/material.dart';
import 'package:ecommerce/components/cart_products.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      'name': 'Heels',
      'picture': 'images/products/hills1.jpeg',
      'price': 20,
      'size': 'M',
      'color': 'Black',
      'quantity': 1,
    },
    {
      'name': 'Dress',
      'picture': 'images/products/dress1.jpeg',
      'price': 40,
      'size': 'S',
      'color': 'Red',
      'quantity': 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnTheCart.length,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          productName: productsOnTheCart[index]['name'],
          productPicture: productsOnTheCart[index]['picture'],
          productColor: productsOnTheCart[index]['color'],
          productSize: productsOnTheCart[index]['size'],
          productQty: productsOnTheCart[index]['quantity'],
          newPrice: productsOnTheCart[index]['price'],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final newPrice;
  final productSize;
  final productColor;
  final productQty;
  SingleCartProduct(
      {this.productPicture,
      this.newPrice,
      this.productName,
      this.productColor,
      this.productSize,
      this.productQty});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          productPicture,
          width: 100.0,
          height: 100.0,
        ),
        title: Text(productName),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text('Size:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    productSize,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text('Color:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    productColor,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                '\$$newPrice',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
        trailing: FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_up,
                  size: 50.0,
                ),
                onPressed: () {},
              ),
              Text(
                '$productQty',
                style: TextStyle(fontSize: 30.0),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 50.0,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
