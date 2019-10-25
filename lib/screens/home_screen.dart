import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/models/product_model.dart';
import 'package:flutter_ecommerce_app_ui/widgets/category_card.dart';
import 'package:flutter_ecommerce_app_ui/widgets/product_card.dart';
import 'package:flutter_ecommerce_app_ui/widgets/trend_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Product> listProducts = []
    ..add(
      Product(
        0,
        'Pastels d’hiver',
        'Nuance Discrètes',
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1289&q=80',
        123.0,
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
      )
    )
    ..add(
      Product(
        1,
        'Pastels d’hiver',
        'Nuance Discrètes',
        'https://images.unsplash.com/photo-1571928022638-dec65b7017c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1339&q=80',
        123.0,
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
      )
    )
    ..add(
      Product(
        2,
        'Pastels d’hiver',
        'Nuance Discrètes',
        'https://images.unsplash.com/photo-1562887009-7924341c5cbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
        123.0,
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
      )
    )
    ..add(
      Product(
        3,
        'Pastels d’hiver',
        'Nuance Discrètes',
        'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
        123.0,
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
      )
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              CategoryCard(categoryName: 'Watch', categoryImage: 'https://images.unsplash.com/photo-1532667449560-72a95c8d381b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
                              CategoryCard(categoryName: 'Shoes', categoryImage: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
                              CategoryCard(categoryName: 'Backpack', categoryImage: 'https://images.unsplash.com/photo-1491637639811-60e2756cc1c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=669&q=80'),
                              CategoryCard(categoryName: 'Makeups', categoryImage: 'https://images.unsplash.com/photo-1556228578-dd539282b964?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=654&q=80'),
                              CategoryCard(categoryName: 'Cars', categoryImage: 'https://images.unsplash.com/photo-1542038428-25a73671ca6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                              CategoryCard(categoryName: 'Inside', categoryImage: 'https://images.unsplash.com/photo-1485955900006-10f4d324d411?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80'),
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
                  simpleBanner('Showroom', 'We bet you will love'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text('Products lists', style: TextStyle(color: Color(0xFF202020), fontSize: 13.0, fontWeight: FontWeight.w400),),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        child: GridView.count(
                          shrinkWrap: true,
                          primary: false,
                          crossAxisCount: 2, children: <Widget>[
                          // Display Product card for each product in List.
                          for(var product in listProducts) new ProductCard(product.getId(), product.getName(), product.getSubTitle(), product.getPrice(), product.getImage(), product.getDescription())
                        ],),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }

  Widget banner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 117.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1542889601-399c4f3a8402?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"), fit: BoxFit.cover)
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
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

  Widget simpleBanner(String title, String subTitle) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 105.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1557587136-b627c2d6e938?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'), fit: BoxFit.cover)
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black.withOpacity(0.20),
                  Colors.white.withOpacity(0.0)
                ]
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Showroom'.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.0),),
                SizedBox(height: 6.0,),
                Text(subTitle, style: TextStyle(color: Colors.white, fontSize: 11.0),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
