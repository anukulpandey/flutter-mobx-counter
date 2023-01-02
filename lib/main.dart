import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxtest/counter.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final Counter counter = Counter();
  final Counter counter2 = Counter();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: const Text("Mobx Counter"),
        centerTitle: true,
        backgroundColor: Colors.pink[400],
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Counter"),
            Observer(builder: (_){
              return Text('${counter.count}');
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        child: const Icon(Icons.add),
        ),
      ),
    );
  }
}