import 'package:ecommerce/screens/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
        return SingleProd(
          productName: productList[index]['name'],
          productPicture: productList[index]['picture'],
          oldPrice: productList[index]['oldPrice'],
          newPrice: productList[index]['price'],
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  SingleProd({
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
