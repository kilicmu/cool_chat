import 'package:json_annotation/json_annotation.dart';
import './message.dart';

part 'chat_information.g.dart';

@JsonSerializable()
class ChatInformation {
  ChatInformation(
    this.id,
    this.type,
    this.rawName,
    this.remark,
    this.recentMessage,
    this.status,
    this.unWatchedCount,
    this.headPicture,
  );

  String id;
  ChatType type;
  String rawName;
  String remark;
  Message recentMessage;
  ChatStatus status;
  int unWatchedCount;
  String headPicture;

  factory ChatInformation.fromJSON(Map<String, dynamic> json) =>
      _$ChatInformationFromJson(json);

  Map<String, dynamic> toJson() => _$ChatInformationToJson(this);
}

enum ChatType { personal, group, official }

enum ChatStatus { normal }
