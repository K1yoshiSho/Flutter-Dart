import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'AlumniSansInlineOne'),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 116, 207),
        appBar: AppBar(
          title: Text('Adding Assets'),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/images/wp6231339.jpg'),
              Center(
                child: Text('Zubilya',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'AlumniSansInlineOne')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
