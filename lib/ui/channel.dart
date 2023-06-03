import 'package:flutter/material.dart';
import 'package:recruitech_flutter/ui/chat.dart';

class ChannelScreen extends StatelessWidget {
  List<String> chatContacts = [
    'Contacto 1',
    'Contacto 2',
    'Contacto 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Canal'),
      ),
      body: ListView.builder(
        itemCount: chatContacts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(chatContacts[index]),
            onTap: () {
              String contactName = chatContacts[index];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(contactName: contactName),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
