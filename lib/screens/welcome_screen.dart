import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/welcome-1.jpg'), fit: BoxFit.cover)
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.black.withOpacity(0.46),
                    Colors.white.withOpacity(0.0),
                  ]
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Text('Welcome', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36.0),),
                  SizedBox(height: 11,),
                  new Text('Brand new perspective', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 24.0),),
                  SizedBox(height: 40.0,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 45.0,
                    child: new OutlineButton(
                        onPressed: () {},
                        textColor: Colors.white,
                        hoverColor: Colors.white,
                        child: new Text("Get Start"),
                        highlightedBorderColor: Colors.white,
                        borderSide: BorderSide(color: Colors.white),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0))
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 45.0,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Create Account'),
                      textColor: const Color(0xFF202020),
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}