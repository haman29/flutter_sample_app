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
              return Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text(foods[index])),
              );
            },
            itemCount: foods.length),
        // body: ListView(
        //   padding: const EdgeInsets.all(8),
        //   children: <Widget>[
        //     Container(
        //       height: 50,
        //       color: Colors.amber[600],
        //       child: const Center(child: Text('Entry A')),
        //     ),
        //     Container(
        //       height: 50,
        //       color: Colors.amber[500],
        //       child: const Center(child: Text('Entry B')),
        //     ),
        //     Container(
        //       height: 50,
        //       color: Colors.amber[100],
        //       child: const Center(child: Text('Entry C')),
        //     ),
        //   ],
        // ));
  }
}
