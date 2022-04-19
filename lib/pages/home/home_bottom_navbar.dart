import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatefulWidget {
  HomeBottomNavBar({Key? key, this.onTap, this.currentIndex = 0})
      : super(key: key);
  void Function(int)? onTap;
  int currentIndex;

  @override
  State<HomeBottomNavBar> createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  _renderNavigatorItems() {
    return const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
      BottomNavigationBarItem(icon: Icon(Icons.perm_contact_cal), label: "朋友"),
      BottomNavigationBarItem(icon: Icon(Icons.style), label: "轻应用"),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "我"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.currentIndex,
        onTap: widget.onTap,
        type: BottomNavigationBarType.fixed,
        items: _renderNavigatorItems());
  }
}
