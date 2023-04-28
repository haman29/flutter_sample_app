import 'package:flutter/material.dart';
import 'package:dart_openai/openai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String _message = "Q.";
  String _answer = "A.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text(_message), Text(_answer)],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final String result =
              await Navigator.pushNamed(context, '/edit') as String;
          setState(() {
            _message = 'Q.' + result;
          });

          final String apiKey = dotenv.get('CHATGPT_TOKEN');
          OpenAI.apiKey = apiKey;

          print(dotenv.get('CHATGPT_TOKEN'));

          OpenAIChatCompletionModel chatCompletion =
              await OpenAI.instance.chat.create(
            model: "gpt-3.5-turbo",
            messages: [
              OpenAIChatCompletionChoiceMessageModel(
                content: result,
                role: OpenAIChatMessageRole.user,
              ),
            ],
          );
          chatCompletion.choices.forEach((element) {
            setState(() {
              _answer = 'A.' + element.message.content.toString();
            });
          });
        },
        tooltip: 'Edit',
        child: const Icon(Icons.edit),
      ),
    );
  }
}
