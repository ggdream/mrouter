library mrouter;

import 'package:flutter/widgets.dart';

class MRouter {
  String _index = '/';
  Map<String, Widget> _routes = {};

  MRouter(Map<String, Widget> routes) {
    if (!routes.containsKey('/')) {
      routes['/'] =
          Text('Hello, MRouter');
    }
    _routes = routes;
  }

  Widget view() => _routes[_index]!;

  void toSwitch(State<StatefulWidget> vsync, String path,
      {Map<String, dynamic>? params}) {
    if (this._routes[path] == null) {
      throw 'The route $path is not defined';
    }
    // ignore: invalid_use_of_protected_member
    vsync.setState(() => _index = path);
  }
}
