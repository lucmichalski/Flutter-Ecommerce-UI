import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/widgets/category_card.dart';
import 'package:flutter_ecommerce_app_ui/widgets/trend_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: null,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {},),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {},)
        ],
      ),
      body: Container(
        color: Colors.white,
        child: RefreshIndicator(
          onRefresh: _handleRefresh,
          child: Container(
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10.0,),
                banner(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text('Categories', style: TextStyle(color: Color(0xFF202020), fontSize: 13.0, fontWeight: FontWeight.w400),),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                        height: 113.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            CategoryCard(categoryName: 'Category 1', categoryImage: 'assets/images/categories/category_1.jpg'),
                            CategoryCard(categoryName: 'Category 2', categoryImage: 'assets/images/categories/category_2.jpg'),
                            CategoryCard(categoryName: 'Category 3', categoryImage: 'assets/images/categories/category_3.jpg'),
                            CategoryCard(categoryName: 'Category 4', categoryImage: 'assets/images/categories/category_1.jpg'),
                            CategoryCard(categoryName: 'Category 5', categoryImage: 'assets/images/categories/category_1.jpg'),
                            CategoryCard(categoryName: 'Category 6', categoryImage: 'assets/images/categories/category_1.jpg'),
                            CategoryCard(categoryName: 'Category 7', categoryImage: 'assets/images/categories/category_1.jpg'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text('New trends', style: TextStyle(color: Color(0xFF202020), fontSize: 13.0, fontWeight: FontWeight.w400),),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        height: 200.0,
                        padding: EdgeInsets.only(left: 20.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            TrendCard(title: 'Pastels D’hiver', subTitle: 'Nuance discrètes', image: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1289&q=80',),
                            TrendCard(title: 'Pastels D’hiver', subTitle: 'Nuance discrètes', image: 'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',),
                            TrendCard(title: 'Pastels D’hiver', subTitle: 'Nuance discrètes', image: 'https://images.unsplash.com/photo-1524678606370-a47ad25cb82a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',),
                            TrendCard(title: 'Pastels D’hiver', subTitle: 'Nuance discrètes', image: 'https://images.unsplash.com/photo-1509695507497-903c140c43b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80',),
                            TrendCard(title: 'Pastels D’hiver', subTitle: 'Nuance discrètes', image: 'https://images.unsplash.com/photo-1454607909945-7e3be3f32602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1345&q=80',),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Text('Hello world'),
                ),
                Container(
                  child: Text('Hello world'),
                ),
                Container(
                  child: Text('Hello world'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<Null> _handleRefresh() async {
    setState(() {
    });

    return null;
  }

  Widget banner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 117.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(image: AssetImage("assets/images/banners/banner-1.jpg"), fit: BoxFit.cover)
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.20),
                  Colors.white.withOpacity(0.0),
                ]
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: EdgeInsets.all(19.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('What is Lorem Ipsum ?'.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 7.0),
              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.', style: TextStyle(color: Colors.white, fontSize: 9.0, height: 1.6),)
            ],
          ),
        ),
      ),
    );
  }
}
