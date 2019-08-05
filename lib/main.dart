import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  List<String> Products = ['Mountain'];

  build(context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('This is my first app'),
            ),
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: RaisedButton(
                    onPressed: () {

                    },
                    child: Text('Add Product'),
                  ),
                ),
                Column(children: Products.map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/mountain.jpg'),
                      Text(element)
                    ],
                  ),
                )).toList(),)

              ]),
            ));
  }
}
