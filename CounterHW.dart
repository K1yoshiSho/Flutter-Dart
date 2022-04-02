import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.indigo,
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(
        title: 'Counter',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tap \"-\" to decrement',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Wrap(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: _decrementCounter,
                        tooltip: 'Decrement',
                      ),
                      Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: _incrementCounter,
                        tooltip: 'Increment',
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Text('Tap "+" to increment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
