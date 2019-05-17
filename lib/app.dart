// import flutter helper library
import 'package:flutter/material.dart';
// Create class that will be our custom widget
// this class must extend the 'StatelessWidget' base class

class App extends StatefulWidget {
  createState(){
    return AppState();
  }
}
class AppState extends State<App> {
  int counter = 0;

  Widget build(context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Let's see some images!"),
            ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
          ),
          body: Text('$counter'),
      ),
    );
  }
}
// Must define a 'build' method that returns
// the widgets that *this* widget will show

