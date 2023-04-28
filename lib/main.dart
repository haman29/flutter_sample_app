import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';
// import 'chat_page.dart';
// import 'edit_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatGPT Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const FirstPage(),
        '/second': (BuildContext context) => const SecondPage(),
      },
    );
  }
}
