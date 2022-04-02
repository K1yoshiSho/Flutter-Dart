import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState(); // "_" - делает приватным. Состояние виджетов во Flutter принято делать приватными, хотя это необязательно
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  late bool _loading;
  late double _progressValue;
  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("Hello"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LinearProgressIndicator(
                        value: _progressValue,
                      ),
                      Text(
                        '${(_progressValue * 100).round()}%',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  )
                : Text(
                    'Press button to download',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });
          },
          child: Icon(Icons.cloud_download_outlined),
        ),
      ),
    );
  }

  void _updateProgress() {
    const oneSec = Duration(milliseconds: 100);
    var timer = Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.01;
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _progressValue = 0.0;
          return;
        }
      });
    });
  }
}
