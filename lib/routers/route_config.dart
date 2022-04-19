import 'package:cool_chat/pages/home/index.dart';
import 'package:cool_chat/pages/search_page/index.dart';

final route_config = {
  'search': (context) => const SearchPage(),
  '/': (context) => Home(),
};
