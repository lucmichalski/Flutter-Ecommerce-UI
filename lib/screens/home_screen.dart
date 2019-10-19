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
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: Container(
          child: ListView(
            children: <Widget>[
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
              Container(
                child: Text('Hello world'),
              ),
            ],
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
}
