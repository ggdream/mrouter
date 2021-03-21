import 'package:flutter/material.dart';
import 'package:mrouter/mrouter.dart';

void main() => runApp(MaterialApp(
      home: App(),
    ));

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// [MRouter]: Instantiate the router
  var router = MRouter({'/profile': Text('profile'), '/': Text('home')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Row(
            children: [
              /// [router.toSwitch(this, 'route-path')] controls routing jump

              IconButton(
                  icon: Icon(Icons.home_rounded),
                  onPressed: () => router.toSwitch(this, '/')),
              IconButton(
                  icon: Icon(Icons.info_rounded),
                  onPressed: () => router.toSwitch(this, '/profile')),
            ],
          ),

          /// [router.view()] is converted to the corresponding routing view
          router.view(),
        ],
      ),
    ));
  }
}
