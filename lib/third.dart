import "package:flutter/material.dart";

void main() => runApp(TestApp());

class TestApp extends StatelessWidget{
  @override 
  Widget build (BuildContext context){
    return new MaterialApp(
      title: "MY TEST APP",
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image:new AssetImage("assets/CAR2.png"),
                  fit: BoxFit.cover ,
                  )
              ),
            ),
            new Center(
              child:  new CircleAvatar(
             child: new Image(
                image: new AssetImage("assets/karwashlogo.jpg") ,
              fit: BoxFit.cover,
             ),
            )
            ),
          ],
      ),

    )
    );

}
}