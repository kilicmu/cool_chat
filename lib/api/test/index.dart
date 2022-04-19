import 'dart:convert';

import 'package:cool_chat/dto/test/count.dart';
import 'package:cool_chat/utils/fetcher.dart';

Future<Count> getChatCount() async {
  final resp = await fetcher.get('/counter');
  return Count.fromJson(resp.data);
}
