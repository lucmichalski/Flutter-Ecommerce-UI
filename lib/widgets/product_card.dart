import 'package:flutter/material.dart';

import '../main.dart';

class ProductCard extends StatelessWidget {

  final int id;
  final String name;
  final String subTitle;
  final double price;
  final String image;
  final String description;

  ProductCard(this.id, this.name, this.subTitle, this.price, this.image, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ProductDetailRoute, arguments: {'id': this.id, 'name': this.name, 'subTitle': this.subTitle, 'price': this.price, 'image': this.image, 'description': this.description});
        },
        highlightColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(image: NetworkImage(this.image), fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(this.name, style: TextStyle(color: Color(0XFF202020), fontSize: 12.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text(this.subTitle, style: TextStyle(color: Color(0XFFC4C4C4), fontSize: 11.0),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
