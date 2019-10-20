import 'package:flutter/material.dart';

class TrendCard extends StatelessWidget {

  final String title;
  final String subTitle;
  final String image;

  TrendCard({this.title, this.subTitle, this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { print('Product trend pressed.'); },
      child: AspectRatio(
        aspectRatio: 2.5 / 2,
        child: Column(
          children: <Widget>[
            Container(
              height: 150.0,
              width: 270.0,
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300],
                image: DecorationImage(image: NetworkImage(this.image), fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              child: Column(
                children: <Widget>[
                  Text(this.title.toUpperCase(), style: TextStyle(color: Color(0XFF202020), fontSize: 12.0, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text(this.subTitle, style: TextStyle(color: Color(0XFFC4C4C4), fontSize: 11.0),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
