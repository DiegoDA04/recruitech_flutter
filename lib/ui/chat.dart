import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class ChatScreen extends StatefulWidget {
  final String contactName;

  ChatScreen({required this.contactName});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // create list of messages with of me or contact , random from message , if me is true then message is from me , if me is false then message is from contact
  int randomValue = Random().nextInt(2);
  List<String> messages = List.generate(
    10,
    (index) => lorem(paragraphs: 1, words: 15),
  );
  List<bool> me = List.generate(10, (index) => Random().nextBool()); 

  // create text editing controller
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // add leading photo to appbar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://ui-avatars.com/api/?name=${widget.contactName}',
              ),
            ),
            const SizedBox(width: 10),
            Text(widget.contactName),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  // add color to card skyblue
                  margin: EdgeInsets.all(8.0),
                  // change color if me is true then color is skyblue , if me is false then color is white
                  color: me[index] ? Color.fromARGB(255, 179, 198, 252) : Colors.white,
                  child: ListTile(
                    title: Text(messages[index]),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Escribe un mensaje...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    String message = _textEditingController.text;
                    if (message.isNotEmpty) {
                      setState(() {
                        messages.add(message);
                        me.add(true);
                      });
                      _textEditingController.clear();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
