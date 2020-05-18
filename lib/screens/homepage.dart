import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/horizontal_list.dart';
import 'package:ecommerce/components/products.dart';

class HomePage extends StatelessWidget {
  static var id = 'homePage';
  @override
  Widget build(BuildContext context) {
    Widget carousel = Container(
      padding: EdgeInsets.only(
        top: 20.0,
      ),
      height: 250.0,
      child: Carousel(
        autoplay: false,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
        ],
        indicatorBgPadding: 4.0,
        dotColor: Colors.white,
        dotBgColor: Colors.transparent,
        dotSize: 4.0,
      ),
    );
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
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              accountEmail: Text('snaman87@gmail.com'),
              accountName: Text('Naman Soni'),
              currentAccountPicture: CircleAvatar(
                child: Text('NS'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Homepage'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Account'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('My Orders'),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Categories'),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          carousel,
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
          HorizontalList(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Recent Products'),
          ),
          Container(
            height: 300.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
