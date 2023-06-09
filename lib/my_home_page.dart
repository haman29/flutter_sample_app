import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _message = '初期値';

  void _incrementCounter() {
    setState(() {
      // _counter++;
      _counter = _counter * 2;
    });
  }

  void getRepo() async {
    var url = Uri.https('api.github.com', 'users/haman29/repos');
    var response = await http.get(url);
    // print(response.statusCode);

    final List body = json.decode(response.body);
    print(body[0]['name']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(children: const [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: ColoredBox(color: Colors.blue),
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: ColoredBox(color: Colors.blue),
                  )),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              SizedBox(
                height: 50,
                width: 50,
                child: ColoredBox(color: Colors.pink),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: ColoredBox(color: Colors.pink),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
              SizedBox(
                height: 50,
                width: 50,
                child: ColoredBox(color: Colors.yellow),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: ColoredBox(color: Colors.yellow),
              ),
            ]),
            TextField(onChanged: (value) {
              setState(() {
                _message = value;
              });
            }),
            Text(_message),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getRepo,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
