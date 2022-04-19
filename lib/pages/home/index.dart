import 'package:cool_chat/assets/consts.dart';
import 'package:cool_chat/pages/all_friends/index.dart';
import 'package:cool_chat/pages/applications/index.dart';
import 'package:cool_chat/pages/chats/index.dart';
import 'package:cool_chat/pages/home/avator_icon.dart';
import 'package:cool_chat/pages/home/home_bottom_navbar.dart';
import 'package:cool_chat/pages/mine/index.dart';
import 'package:cool_chat/pages/recreations/index.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeHomeState createState() => _HomeHomeState();
}

class _HomeHomeState extends State<Home> {
  final _rootScaffoldKey = GlobalKey<ScaffoldState>();

  int _currentPageIndex = 0;

  List<PopupMenuItem<int>> _renderMenus() {
    return [
      const PopupMenuItem<int>(child: Text('do1')),
      const PopupMenuItem<int>(child: Text('do2'))
    ];
  }

  _changeCurrentPageIndex(int idx) {
    print(idx);
    setState(() {
      _currentPageIndex = idx;
    });
  }

  _openUserDraw() {
    final state = _rootScaffoldKey.currentState;
    print("state");
    if (state == null) {
      return;
    }
    state.openDrawer();
    print("open");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _rootScaffoldKey,
      appBar: AppBar(
        leading: Center(
            child: AvatarIcon(
                src:
                    "https://i0.hdslb.com/bfs/face/488371ac23b8dc66ff8615c2f5071e8761b04368.jpg@240w_240h_1c_1s.webp",
                onTap: _openUserDraw)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => Navigator.of(context).pushNamed("search"),
          ),
          PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (BuildContext ctx) => _renderMenus())
        ],
      ),
      drawer: const Drawer(),
      body: IndexedStack(
        index: _currentPageIndex,
        children: const [
          Chats(),
          AllFriends(),
          Applications(),
          Mine(),
        ],
      ),
      bottomNavigationBar: HomeBottomNavBar(
          currentIndex: _currentPageIndex, onTap: _changeCurrentPageIndex),
    );
  }
}
