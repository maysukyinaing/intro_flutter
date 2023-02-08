import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Intro to Flutter",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int _counter = 56;
  void increaseCounter() {
   setState(() {
     _counter++;
   });
  }
  void decreaseCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
             IconButton(
              onPressed: increaseCounter,
              icon: Icon(Icons.add),
              iconSize: 50.0,
              color: Colors.green
            ),
          Text(
            "$_counter",
            style: Theme.of(context).textTheme.displayMedium,
          ),
           IconButton(
            onPressed: decreaseCounter,
            icon: Icon(Icons.remove),
            iconSize: 50.0,
            color: Colors.red,
          ),
            Text(
              "$_counter",
            ),
          ],
        ),
      ),
    );
  }

}