import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Color color1 = Colors.purpleAccent;
  Color color2 = Colors.deepPurple;
  Color color3 = Colors.deepPurpleAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My app",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                width: 400,
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: color1,
                        child: const Center(child: Text('List 1')),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 50,
                        color: color2,
                        child: const Center(child: Text('List 2')),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 50,
                        color: color3,
                        child: const Center(child: Text('List 3')),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 50,
                        color: color1,
                        child: const Center(child: Text('List 1')),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 50,
                        color: color2,
                        child: const Center(child: Text('List 2')),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 50,
                        color: color3,
                        child: const Center(child: Text('List 3')),
                      ),
                    ],
            ))),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    color1 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                    color2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                    color3 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                  });
                },
                child: Text("Change colors", style: TextStyle(fontSize: 20),)),
            SizedBox(height: 90)
          ],
        ),
      ),
    );
  }
}