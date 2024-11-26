import 'package:flutter/material.dart';
import 'home_page1.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List;
    List imageUrls = args[0];
    List titles = args[1];
    List descriptions = args[2];


    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page 2'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index){
          return ListTile(
            trailing: Image(image: NetworkImage('${imageUrls[index]}')),
            title: Text('${titles[index]}'),
            subtitle: Text('${descriptions[index]}'),
          );
        },),
    );
  }
}