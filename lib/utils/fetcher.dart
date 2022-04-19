import 'package:dio/dio.dart';
import 'package:cool_chat/config/host.dart';

final options = BaseOptions(
    contentType: "application/json",
    receiveTimeout: 4000,
    baseUrl: config!["host"]!);

final fetcher = Dio(options);
