import 'package:cool_chat/api/test/index.dart';
import 'package:cool_chat/dto/chat/chat_information.dart';
import 'package:cool_chat/pages/chats/chat_information.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<ChatInformation> informations = [];

  initState() {
    super.initState();
    getChatCount().then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ChatInformationWidget(chatInformation: informations[index]);
        },
        itemCount: informations.length);
  }
}
