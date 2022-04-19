import 'package:flutter/material.dart';

class Recreations extends StatefulWidget {
  const Recreations({Key? key}) : super(key: key);

  @override
  State<Recreations> createState() => _RecreationsState();
}

class _RecreationsState extends State<Recreations> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("暂未开放", style: TextStyle(fontSize: 20)));
  }
}
