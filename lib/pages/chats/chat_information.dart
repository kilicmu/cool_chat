import 'package:cool_chat/dto/chat/chat_information.dart';
import 'package:flutter/material.dart';

class ChatInformationWidget extends StatefulWidget {
  ChatInformationWidget({Key? key, required this.chatInformation})
      : super(key: key);
  ChatInformation chatInformation;

  @override
  State<ChatInformationWidget> createState() => _ChatInformationWidgetState();
}

class _ChatInformationWidgetState extends State<ChatInformationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
