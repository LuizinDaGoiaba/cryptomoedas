import 'package:flutter/material.dart';
import 'home_page1.dart';

class HomePage3 extends StatelessWidget {
  HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List;
    List imageUrls = args[0];
    List titles = args[1];
    List descriptions = args[2];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page 3'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            trailing: Image(image: NetworkImage('${imageUrls[0]}')),
            title: Text('${titles[0]}'),
            subtitle: Text('${descriptions[0]}'),
          ),
          ListTile(
            trailing: Image(image: NetworkImage('${imageUrls[1]}')),
            title: Text('${titles[1]}'),
            subtitle: Text('${descriptions[1]}'),
          ),
          ListTile(
            trailing: Image(image: NetworkImage('${imageUrls[2]}')),
            title: Text('${titles[2]}'),
            subtitle: Text('${descriptions[2]}'),
          ),
          ListTile(
            trailing: Image(image: NetworkImage('${imageUrls[3]}')),
            title: Text('${titles[3]}'),
            subtitle: Text('${descriptions[3]}'),
          ),
          ListTile(
            trailing: Image(image: NetworkImage('${imageUrls[4]}')),
            title: Text('${titles[4]}'),
            subtitle: Text('${descriptions[4]}'),
          ),
          ListTile(
            trailing: Image(image: NetworkImage('${imageUrls[5]}')),
            title: Text('${titles[5]}'),
            subtitle: Text('${descriptions[5]}'),
          ),
          ListTile(
            trailing: Image(image: NetworkImage('${imageUrls[6]}')),
            title: Text('${titles[6]}'),
            subtitle: Text('${descriptions[6]}'),
          ),
          ListTile(
            trailing: Image(image: NetworkImage('${imageUrls[7]}')),
            title: Text('${titles[7]}'),
            subtitle: Text('${descriptions[7]}'),
          ),
          ListTile(
            trailing: Image(image: NetworkImage('${imageUrls[8]}')),
            title: Text('${titles[8]}'),
            subtitle: Text('${descriptions[8]}'),
          ),
        ],
      ),
    );
  }
}
