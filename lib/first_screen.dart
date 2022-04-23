import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              children: <Widget>[
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Weight in cm',
                    icon: Icon(Icons.trending_up),
                  ),
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Weight in kg',
                    icon: Icon(Icons.line_weight),
                  ),
                ),
                const SizedBox(height: 35),
                ElevatedButton(
                  child: const Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 15),
                const Text(
                  "Result will be here",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )));
  }
}
