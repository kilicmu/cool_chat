import 'package:flutter/material.dart';

class Applications extends StatefulWidget {
  const Applications({Key? key}) : super(key: key);

  @override
  State<Applications> createState() => _ApplicationsState();
}

class _ApplicationsState extends State<Applications> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("暂未开放", style: TextStyle(fontSize: 20)));
  }
}
