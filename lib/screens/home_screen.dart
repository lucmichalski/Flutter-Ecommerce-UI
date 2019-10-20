import 'package:flutter/material.dart';

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
                banner(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text('Categories', style: TextStyle(color: Color(0xFF202020), fontSize: 11.0,),),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        height: 113.0,
                        child: ListView(
                          padding: EdgeInsets.only(left: 20.0),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            InkWell(
                              onTap: () { print('Categories pressed'); },
                              child: Container(
                                height: 100.0,
                                width: 114.0,
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(image: AssetImage('assets/images/categories/category_1.jpg'), fit: BoxFit.cover)
                                ),
                                child: Center(
                                  child: Text('Category 1'.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 11.0, fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
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
