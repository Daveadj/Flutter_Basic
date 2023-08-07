import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(30.0),
              child: const Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
              padding: const EdgeInsets.all(30.0),
              child: const Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(30.0),
              child: const Text('3'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Text('click'),
      ),
    );
  }
}
