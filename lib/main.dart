import 'package:flutter/material.dart';
import 'package:helloworld_flutter/custom_widgets.dart';
import 'package:helloworld_flutter/data_access.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    void _navigateTest(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondRoute()),
      );
    }

    return MaterialApp(
      title: 'Flutter layout demo',



      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo!'),
        ),
        body: ListView(

          children: [
                      imageSection,
                      titleSection,
                      buttonSection,
                      textSection,
          ],
        ),
      ),
    );
  }




  static Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }



}
