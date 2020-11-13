import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sakari Ekqvist - Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white,
                margin: EdgeInsets.all(100),
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Hello"),
                    Text("I'm <b>Sakari Ekqvist, a GAME and APP developer from Turku, Finland"),
                  ],
                )),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
          ],
        ),
      ),
    );
  }
}
