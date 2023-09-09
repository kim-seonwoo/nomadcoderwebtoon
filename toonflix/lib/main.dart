import 'package:flutter/material.dart';

class Player {
  String? name;
  // name 파라미터가 있어도 되고 없어도됨을 의미: optional

  Player({required this.name});
  // named parameter로 설정
}

void main() {
  var nico = Player(name: 'nico');
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello World')),
        body: Center(child: Text('Hello World')),
      ),
    );
  }
}
