import 'package:flutter/cupertino.dart';
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

    //init value of search bar
    String searchValue = '';

    return Scaffold(
      appBar: AppBar(
        //center title in appbar , appbar height is 56
        toolbarHeight: 59,
        centerTitle: true,
        title:  
          const Text(
            'Chat',
            textAlign: TextAlign.center,
          ), 
      ),
      body: 
      Column(children: [
        // search bar filter contacts
        Container(
          margin: EdgeInsets.all(18),
          child: const CupertinoSearchTextField(
            placeholder: 'Search',
          ),
        ),
        Expanded(
          child: ListView.builder(
          itemCount: chatContacts.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://ui-avatars.com/api/?name=${chatContacts[index]}'),
              ),
              title: Text(chatContacts[index]),
              //last message
              subtitle: Text('Last message'),
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
        )
      ],)
      
    );
  }
}
