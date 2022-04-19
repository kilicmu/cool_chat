import 'package:cool_chat/dto/user/user_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  Message(this.id, this.type, this.time, this.content, this.fromUser);
  int id;
  MessageType type;
  int time;
  String content;
  UserInfo fromUser;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}

enum MessageType { normal }
