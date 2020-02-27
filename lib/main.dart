import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Snackbar App",
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Snackbar App"),
      ),
      body: new Body()
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new RaisedButton(
          child: new Text("Click Me",
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          color: Colors.lightBlue,
          onPressed: () => Scaffold.of(context).showSnackBar(
              new SnackBar(
                content: new Text("You Click Me..."),
                duration: new Duration(seconds: 2),
              )
          ),
        ),
      ),
    );
  }
}
