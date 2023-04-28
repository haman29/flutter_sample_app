import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
      const Text("最初のページ"),
      IconButton(
          onPressed: () {
            // TODO:
            // Navigator.push(context, route);
          },
          icon: const Icon(Icons.heart_broken))
    ])));
  }
}
