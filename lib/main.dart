import 'package:flutter/material.dart';
import 'my_home_page.dart';
// import 'my_list_view.dart';
// import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const FirstPage(),
      // home: const MyListView(title: 'Flutter Demo Home Page aaa'),
      home: const MyHomePage(title: 'Flutter Demo Home Page aaa'),
    );
  }
}
