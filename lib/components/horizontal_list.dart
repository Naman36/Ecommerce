import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'jeans.png',
            imageCaption: 'Jeans',
          ),
          Category(
            imageLocation: 'dress.png',
            imageCaption: 'Dress',
          ),
          Category(
            imageLocation: 'accessories.png',
            imageCaption: 'Accessories',
          ),
          Category(
            imageLocation: 'formal.png',
            imageCaption: 'Formals',
          ),
          Category(
            imageLocation: 'shoe.png',
            imageCaption: 'Shoes',
          ),
          Category(
            imageLocation: 'informal.png',
            imageCaption: 'Informals',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
  Category({this.imageCaption, this.imageLocation});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image(
            image: AssetImage('images/cats/$imageLocation'),
            height: 80.0,
            width: 60.0,
          ),
          subtitle: Text(
            imageCaption,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
