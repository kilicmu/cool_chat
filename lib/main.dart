import 'package:cool_chat/routers/index.dart';
import 'package:cool_chat/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import "./routers/index.dart";

void main() {
  runApp(AirChatApp());
}

class AirChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: const [Locale('en', 'US'), Locale('zh', 'CN')],
        routes: Routes.config,
        theme: CoolChartTheme.light);
  }
}
