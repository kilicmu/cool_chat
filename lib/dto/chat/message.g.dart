// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      json['id'] as int,
      $enumDecode(_$MessageTypeEnumMap, json['type']),
      json['time'] as int,
      json['content'] as String,
      UserInfo.fromJson(json['fromUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'type': _$MessageTypeEnumMap[instance.type],
      'time': instance.time,
      'content': instance.content,
      'fromUser': instance.fromUser,
    };

const _$MessageTypeEnumMap = {
  MessageType.normal: 'normal',
};
