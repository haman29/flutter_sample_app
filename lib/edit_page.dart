import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  EditPage({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('テキスト入力画面'), actions: [
        IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            Navigator.pop(context, _controller.text);
          },
        )
      ]),
      body: TextField(
        controller: _controller,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        maxLength: null,
      ),
    );
  }
}
