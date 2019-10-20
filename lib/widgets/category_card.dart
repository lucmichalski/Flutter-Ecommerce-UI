import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final String categoryName;
  final String categoryImage;

  CategoryCard({ this.categoryName, this.categoryImage });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { print('Categories pressed'); },
      child: Container(
        height: 100.0,
        width: 114.0,
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(image: NetworkImage(this.categoryImage), fit: BoxFit.cover)
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black.withOpacity(0.20),
                  Colors.white.withOpacity(0.0)
                ]
            ),
          ),
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(this.categoryName.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 11.0, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
