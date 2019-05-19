// import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'models/image_model.dart';
import 'widgets/image_list.dart';
// Create class that will be our custom widget
// this class must extend the 'StatelessWidget' base class

class App extends StatefulWidget {
  createState(){
    return AppState();
  }
}
class AppState extends State<App> {
  int counter = 1;
  List<ImageModel> images = [];

  void fetchImage() async {
    final response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    counter+=1;
    final imageModel = ImageModel.fromJson(json.decode(response.body));

  //setState is called here since everytime we want to refresh the interface, we need to update it with setState
  //this is why inside the AppState class we are calling setState each time we press the button to update the imageList
    setState(() {
      images.add(imageModel);
    });
  }
  Widget build(context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Let's see some images!"),
            ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: fetchImage,
          ),
          body: ImageList(images),
      ),
    );
  }
}
// Must define a 'build' method that returns
// the widgets that *this* widget will show

