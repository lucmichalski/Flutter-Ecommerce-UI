import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/widgets/trend_card.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 330.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(
                          'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'),
                          fit: BoxFit.cover)
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.15),
                              Colors.white.withOpacity(0.0),
                            ]
                        )
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('130.00 €', style: TextStyle(
                            color: Colors.white, fontSize: 11.0),),
                        SizedBox(height: 7,),
                        Text('Pastels d’hiver', style: TextStyle(
                            color: Colors.white, fontSize: 24.0),),
                        Text('Nuance discrètes', style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300),),
                      ],
                    ),
                  ),
                ),
                _appBar(context),
              ],
            ),
            SizedBox(height: 10.0,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('Description', style: TextStyle(
                        color: Color(0xFF202020),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400),),
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(color: Color(0xFFC4C4C4),
                          fontSize: 11.0,
                          height: 2.10),),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 40.0,
                            child: FlatButton(
                              onPressed: () {},
                              textColor: Colors.white,
                              color: Color(0xFF202020),
                              child: Text('Add to cart', style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w400),),
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: IconButton(icon: Icon(
                            Icons.favorite_border, color: Color(0xFF202020),),
                              onPressed: null),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _technicalSheet(title: 'Product material', content: 'Textile and synthetic / synthetic sole'),
                        _technicalSheet(title: 'Colors', content: 'Black'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  // Display Trend Cards
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text('New trends', style: TextStyle(
                              color: Color(0xFF202020),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400),),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          height: 200.0,
                          padding: EdgeInsets.only(left: 20.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              TrendCard(title: 'Pastels D’hiver',
                                subTitle: 'Nuance discrètes',
                                image: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1289&q=80',),
                              TrendCard(title: 'Pastels D’hiver',
                                subTitle: 'Nuance discrètes',
                                image: 'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',),
                              TrendCard(title: 'Pastels D’hiver',
                                subTitle: 'Nuance discrètes',
                                image: 'https://images.unsplash.com/photo-1524678606370-a47ad25cb82a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',),
                              TrendCard(title: 'Pastels D’hiver',
                                subTitle: 'Nuance discrètes',
                                image: 'https://images.unsplash.com/photo-1509695507497-903c140c43b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80',),
                              TrendCard(title: 'Pastels D’hiver',
                                subTitle: 'Nuance discrètes',
                                image: 'https://images.unsplash.com/photo-1454607909945-7e3be3f32602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1345&q=80',),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 45.0),
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,),
              onPressed: () {
                Navigator.pop(context);
              }),
          Expanded(
            child: SizedBox(),
          ),
          IconButton(
              icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: null),
        ],
      ),
    );
  }

  Widget _technicalSheet({title, content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: TextStyle(color: Color(0xFF202020), fontSize: 13.0, fontWeight: FontWeight.w400),),
        SizedBox(height: 7.0,),
        Text(content, style: TextStyle(color: Color(0xFFC4C4C4), fontSize: 13.0, fontWeight: FontWeight.w400),),
        SizedBox(height: 10.0,),
      ],
    );
  }
}
