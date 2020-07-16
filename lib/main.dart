import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Welcome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget image_slider_carousel= new Container(
      height: 200.0,
      child: new  Carousel(

        boxFit:BoxFit.fitWidth,
        images: [
          Image.network(
            'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true',
          )
          ,
          ExactAssetImage
            ('images/abc.jpg'),

        ],
        autoplay: true,
        indicatorBgPadding: 0,
        dotColor: Colors.red,
      ),
    );
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),

        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("vikas yadav"),
                accountEmail: Text("vikas090497@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                  Theme.of(context).platform == TargetPlatform.iOS
                      ? Colors.blue
                      : Colors.white,
                  child: Text(
                    "V",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                title: Text("My profile"),
                leading: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("My orders"),
                leading: Icon(Icons.graphic_eq),
              ),
              ListTile(
                title: Text("My Recipet"),
                leading: Icon(Icons.games),
              ), ListTile(
                title: Text("My Ledger"),
                leading: Icon(Icons.arrow_forward),
              ), ListTile(
                title: Text("My Invoice"),
                leading: Icon(Icons.four_k),
              ), ListTile(
                title: Text("My PayVQR"),
                leading: Icon(Icons.account_balance_wallet),
              ), ],
          ),
        ),

        body:
        Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              image_slider_carousel,


              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'MRK TREDX PVT. LTD',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Manufacturer()',
                    style: TextStyle(

                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  )),

              Container(
                padding: EdgeInsets.all(10),
                child:GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    // Generate 100 widgets that display their index in the List.
                    children: <Widget> [

                      Card (color: Colors.blue,
                        child: Stack(children: <Widget>[Center(child: Icon(Icons.account_box,size:50,color:Colors.white,),

                        ),Container(
                          margin: EdgeInsets.only(top: 70,left: 30),
                          child: Text("About",style: TextStyle(color: Colors.white,fontSize: 16.0,),),
                        )],),),
                      Card (color: Colors.blue,
                        child: Stack(children: <Widget>[Center(child: Icon(Icons.add_location,size:50,color:Colors.white,),

                        ),Container(
                          margin: EdgeInsets.only(top: 70,left: 30),
                          child: Text("Address",style: TextStyle(color: Colors.white,fontSize: 16.0,),),
                        )],),),
                      Card (color: Colors.blue,
                        child: Stack(children: <Widget>[Center(child: Icon(Icons.contact_phone,size:50,color:Colors.white,),

                        ),Container(
                          margin: EdgeInsets.only(top: 70,left: 30),
                          child: Text("Contact",style: TextStyle(color: Colors.white,fontSize: 16.0,),),
                        )],),),
                      Card (color: Colors.blue,
                        child: Stack(children: <Widget>[Center(child: Icon(Icons.cake,size:50,color:Colors.white,),

                        ),Container(
                          margin: EdgeInsets.only(top: 70,left: 30),
                          child: Text("Store",style: TextStyle(color: Colors.white,fontSize: 16.0,),),
                        )],),),
                      Card (color: Colors.blue,
                        child: Stack(children: <Widget>[Center(child: Icon(Icons.tablet_mac,size:50,color:Colors.white,),

                        ),Container(
                          margin: EdgeInsets.only(top: 70,left: 30),
                          child: Text("Offers",style: TextStyle(color: Colors.white,fontSize: 16.0,),),
                        )],),),
                      Card (color: Colors.blue,
                        child: Stack(children: <Widget>[Center(child: Icon(Icons.gavel,size:50,color:Colors.white,),

                        ),Container(
                          margin: EdgeInsets.only(top: 70,left: 30),
                          child: Text("Gallery",style: TextStyle(color: Colors.white,fontSize: 16.0,),),
                        )],),),
                      Card (color: Colors.blue,

                        child: Stack(children: <Widget>[Center(child: Icon(Icons.battery_full,size:50,color:Colors.white,),

                        ),Container(
                          margin: EdgeInsets.only(top: 70,left: 30),
                          child: Text("Banking",style: TextStyle(color: Colors.white,fontSize: 16.0,),),
                        )],),),
                      Card (color: Colors.blue,
                        child: Stack(children: <Widget>[Center(child: Icon(Icons.edit,size:50,color:Colors.white,),

                        ),Container(
                          margin: EdgeInsets.only(top: 70,left: 30),
                          child: Text("Registeration",style: TextStyle(color: Colors.white,fontSize: 16.0,),),
                        )],),),
                      Card (color: Colors.blue,
                        child: Stack(
                          children: <Widget>[
                            Center(child: Icon(Icons.four_k,size:50,color:Colors.white,),

                            ),Container(
                              margin: EdgeInsets.only(top: 70,left: 30),
                              child: Text("Support"
                                ,style: TextStyle(color: Colors.white,fontSize: 16.0,),),
                            )],),)
                    ]

                ),),





            ],
          ),
        )




      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}
