import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 0,
          leading: const Text(""),
          title: ConstrainedBox(
            constraints: const BoxConstraints.tightForFinite(height: 28.0),
            child: const TextField(
                maxLines: 1,
                autofocus: true,
                style: TextStyle(color: Colors.black54),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white60,
                  border: InputBorder.none,
                )),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(
                  "取消",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: Container(child: const Text("search page")));
  }
}
