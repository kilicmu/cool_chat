// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatInformation _$ChatInformationFromJson(Map<String, dynamic> json) =>
    ChatInformation(
      json['id'] as String,
      $enumDecode(_$ChatTypeEnumMap, json['type']),
      json['rawName'] as String,
      json['remark'] as String,
      Message.fromJson(json['recentMessage'] as Map<String, dynamic>),
      $enumDecode(_$ChatStatusEnumMap, json['status']),
      json['unWatchedCount'] as int,
      json['headPicture'] as String,
    );

Map<String, dynamic> _$ChatInformationToJson(ChatInformation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ChatTypeEnumMap[instance.type],
      'rawName': instance.rawName,
      'remark': instance.remark,
      'recentMessage': instance.recentMessage,
      'status': _$ChatStatusEnumMap[instance.status],
      'unWatchedCount': instance.unWatchedCount,
      'headPicture': instance.headPicture,
    };

const _$ChatTypeEnumMap = {
  ChatType.personal: 'personal',
  ChatType.group: 'group',
  ChatType.official: 'official',
};

const _$ChatStatusEnumMap = {
  ChatStatus.normal: 'normal',
};
