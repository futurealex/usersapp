import 'package:flutter/material.dart';

void main()=> runApp(QuickBee());

 class QuickBee extends StatefulWidget {
  final Widget child;

  QuickBee({Key key, this.child}) : super(key: key);

  _QuickBeeState createState() => _QuickBeeState();
}

class _QuickBeeState extends State<QuickBee> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: "UserApp",
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         fontFamily: "Roboto",
       ),
       home: MyHomePage(),
        routes: <String, WidgetBuilder>{
        "/SecondPage": (BuildContext context) => new SecondPage(),
        "/ThirdPage": (BuildContext context) => new ThirdPage(),
        "/FourthPage":  (BuildContext context) => new FourthPage(),
      }
           );
         }
       }
       
       class MyHomePage extends StatelessWidget{
         @override
         Widget build(BuildContext context){
           return new Scaffold(
             body: Center(
               child: Column(
                 children: <Widget>[
                     new Image(
              image: new AssetImage("assets/CAR2.png") ,
              fit: BoxFit.cover,
              color:Colors.black87 ,
              colorBlendMode:BlendMode.lighten,
            ),
                   new Stack(
                     alignment: Alignment.center,
                     children: <Widget>[
                        new Container(
                       height: 60.0,
                       width: 60.0,
                     decoration: new BoxDecoration(
                       borderRadius: new BorderRadius.circular(50.0),
                       color: Colors.transparent,
                     ),
                     child:  new Image(
              image: new AssetImage("assets/karwashlogo.jpg") ,
              fit: BoxFit.cover,
              color:Colors.black87 ,
              colorBlendMode:BlendMode.lighten,
            ),
                        )
                     ]
                
                     
                   
                   ),
                   new Row(
                     children: <Widget>[
                       new Text("KARWASH USER APP",style: new TextStyle(fontSize:30.0 ),),

                     ],
                   ),
                      new Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: <Widget>[
            
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom:8.0,  ),
                child: new MaterialButton(
                  color: Colors.teal,
                  textColor: Colors.white54,
                  child: new Text("LOGIN"),
                  onPressed:() {Navigator.of(context).pushNamed("/SecondPage");}
                ),
              ),
              new MaterialButton(
                color: Colors.teal,
                textColor: Colors.white54,
                child: new Text("SIGNUP"),
                onPressed:()  {Navigator.of(context).pushNamed("/ThirdPage");} 
              ),
              
            ],
            
          )
                 ],
             ),
           )
           );
         }
}

class SecondPage extends StatefulWidget {
  final Widget child;

  SecondPage({Key key, this.child}) : super(key: key);

  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SIGNUP PAGE") ,
        backgroundColor: Colors.deepOrange,
      ) ,
      body:new Container(
        child:new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: <Widget>[
              new FlutterLogo(
                size: 60,
              ),
              Padding(
               padding: const EdgeInsets.only(left: 15.0, right: 15.0,),
                child: new TextFormField(
                  validator:(value) => value.isEmpty ? "name can\'t be empty" :null,
                  decoration:new InputDecoration(
                    labelText: "NAME",
                    hintText: "surname/firstname/lastname",
                  ) ,
                  keyboardType:TextInputType.emailAddress,
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 15.0, right: 15.0,   ),
                 child: new TextFormField(
                   autovalidate:true ,
                   validator:(value) => value.isEmpty ? "Email can\'t be empty" :null,
                  decoration:new InputDecoration(
                    labelText: "EMAIL",
                    hintText: "future312@gmail.com",
                  ) ,
                  keyboardType:TextInputType.text,
                 ),
               ),
               Padding(
               padding: const EdgeInsets.only(left: 15.0, right: 15.0,),
                 child: new TextFormField(
                    autovalidate:true ,
                   validator:(value) => value.isEmpty ? "password can\'t be empty" :null,
                  decoration:new InputDecoration(
                    labelText: "PASSWORD",
                    hintText: "YTD5463575GTF4G75",
                  ) ,
                  keyboardType:TextInputType.text,
                  obscureText:true ,
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top:10.0, left:20.0 , ) ,
                 child: InkWell(
                   child: Text('Forgot Password',
                   style: TextStyle(
                     color: Colors.deepOrange,
                     fontWeight: FontWeight.bold,
                   ),
                   ) ,
                 ),
               ),
               Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom:8.0,  ),
                child: new MaterialButton(
                  color: Colors.deepOrange,
                  textColor: Colors.white54,
                  child: new Text("LOGIN"),
                  onPressed:() => {}
                ),
              ),
            ],
        ) ,
             ] ,
    )
    )
      )
    );
  }
}
class ThirdPage extends StatefulWidget {
  final Widget child;

  ThirdPage({Key key, this.child}) : super(key: key);

  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final formKey = new GlobalKey <FormState>();
String _email;
String _password;
  void validateAndSave(){
final form =formKey.currentState;
if (form.validate()){
  print("form is valid. Email: $_email, password: $_password " );
} else {
  print('form is invalid.Email: $_email, password: $_password');
  }
  }

  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
        title: new Text("LOGIN PAGE") ,
        backgroundColor: Colors.deepOrange,
      ) ,
      body:new Container(
        child:new Center(
          child: new Column(
            key: formKey ,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: <Widget>[
              new FlutterLogo(
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 2.0  ),
                child: new TextFormField(
                   autovalidate:true ,
                  validator:(value) => value.isEmpty ? "Email can\'t be empty" :null,
                  onSaved: (value) => _email =value,
                  decoration:new InputDecoration(
                    labelText: "EMAIL",
                    hintText: "future312@gmail.com",
                  ) ,
                  keyboardType:TextInputType.emailAddress,
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 10.0, right: 10.0,),
                 child: new TextFormField(
                    autovalidate:true ,
                   validator:(value) => value.isEmpty ? "password can\'t be empty" :null,
                    onSaved: (value) => _password =value,
                  decoration:new InputDecoration(
                    labelText: "PASSWORD",
                    hintText: "YTD5463575GTF4G75"
                  ) ,
                  keyboardType:TextInputType.text,
                  obscureText:true ,
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top:10.0, left:10.0 , ) ,
                 child: InkWell(
                   child: Text('Forgot Password',
                   style: TextStyle(
                     color: Colors.deepOrange,
                     fontWeight: FontWeight.bold,
                   ),
                   ) ,
                 ),
               ),
               Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom:8.0,  ),
                child: new MaterialButton(
                  color: Colors.deepOrange,
                  textColor: Colors.white54,
                  child: new Text("LOGIN"),
                  onPressed:() {Navigator.of(context).pushNamed("/FourthPage");}
                ),
              ),
            ],
        ) ,
             ] ,
    )
    )
    )
    );
}
}

class FourthPage extends StatefulWidget {
  final Widget child;

  FourthPage({Key key, this.child}) : super(key: key);

  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
        title: new Text("DRAWER PAGE") ,
        backgroundColor: Colors.deepOrange,
      ) ,
      drawer: new Drawer(
        
     child: new ListView(
       children: <Widget>[
         new UserAccountsDrawerHeader(
           accountName:new Text("FUTUREALEX"),
           accountEmail: new Text("futurealex551@gmail.com"),
           currentAccountPicture: new CircleAvatar(
              backgroundColor:Colors.orange ,
              child: new Text("F") ,
           ) ,
         ),
         new ListTile(
           title: new Text("CART"),
           leading: new Icon(Icons.add_shopping_cart),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("FAVORITE"),
           leading: new Icon(Icons.favorite),
            onTap: () => Navigator.of(context).pop(),
         ),
        new ListTile(
           title: new Text("BUSINESS"),
           leading: new Icon(Icons.business),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("LOCATION"),
           leading : new Icon(Icons.location_on),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("MESSAGE"),
           leading: new Icon(Icons.message),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("NAVIGATION"),
           leading: new Icon(Icons.navigation),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("WIFI"),
           leading: new Icon(Icons.wifi),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("CART"),
           leading: new Icon(Icons.add_shopping_cart),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("VOICE CHAT"),
           leading : new Icon(Icons.voice_chat),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("VIDEO CALL"),
           leading: new Icon(Icons.videocam),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("UPDATES"),
           leading: new Icon(Icons.update),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("TIMER"),
           leading: new Icon(Icons.timer),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("CAMERA SWITCHING"),
           leading: new Icon(Icons.switch_camera),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("VIDEO SWITCHING"),
           leading: new Icon(Icons.switch_video),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("AGENT ACCOUNT"),
          leading: new Icon(Icons.supervisor_account),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("MAP"),
           leading: new Icon(Icons.map),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("CLOSEST AGENT"),
           leading: new Icon(Icons.local_offer),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("HOTEL"),
           leading: new Icon(Icons.local_hotel),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("LANGUAGE"),
           leading :new Icon(Icons.language),
            onTap: () => Navigator.of(context).pop(),
         ),
         new ListTile(
           title: new Text("CONTACTS"),
           leading: new Icon(Icons.import_contacts),
            onTap: () => Navigator.of(context).pop(),
         ),
       ],
    )
      )
    );
}
}