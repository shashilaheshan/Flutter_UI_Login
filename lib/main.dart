import 'package:flutter/material.dart';
import 'package:ui_design1/Styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: height * 30 / 100,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 20.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.donut_small,
                        color: Colors.orangeAccent,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 28.0, left: 20.0, top: 20.0),
                  child: Text(
                    'Everything you want learn in a single app.',
                    style: t2,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 70 / 100,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              overflow: Overflow.visible,
              children: <Widget>[
                Positioned(
                  child: Container(
                    height: height * 40 / 100,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.orangeAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 250,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.black,
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0)),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 250,
                          height: 50,
                          child: RaisedButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0)),
                            color: Colors.white,
                            child: Text('Registration'),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child:
                              Text('Continue without registration', style: t3),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: Image.network(
                    "https://www.pngrepo.com/download/298945/leaf.png",
                    width: 50,
                    height: 300,
                  ),
                ),
                Positioned(
                  top: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7YqxWC7ThyI2BNRkxQAWvypL7MhhfuVwLRRSfwp2qS-NozpBu8w",
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 20,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2016/06/14/10/53/party-1456248_960_720.png",
                    width: 100,
                    height: 300,
                  ),
                ),
                Positioned(
                  top: 10,
                  child: Icon(
                    Icons.multiline_chart,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 10,
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 25,
                  child: Icon(
                    Icons.watch,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  top: 150,
                  right: 20,
                  child: Icon(
                    Icons.verified_user,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
