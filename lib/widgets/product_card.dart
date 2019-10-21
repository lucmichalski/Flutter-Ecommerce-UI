import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: () { print('Pressed on product'); },
        highlightColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1289&q=80'), fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Product title', style: TextStyle(color: Color(0XFF202020), fontSize: 12.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text('Nuance Discrètes', style: TextStyle(color: Color(0XFFC4C4C4), fontSize: 11.0),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
