import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key, required this.title});

  final String title;

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final List foods = ['カレー', 'キーマカレー', 'ビーフカレー', 'たまご'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemBuilder: (_, index) {
            return Text(foods[index]);
          },
          itemCount: foods.length),
    );
  }
}
