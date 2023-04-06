import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  List<Widget> createTabs(int diners) {
    var tabs = <Widget>[];

    for (var i = 0; i < diners; i++) {
      tabs.add(const Tab(icon: Icon(Icons.face)));
    }

    return tabs;
  }

  List<Widget> createChildren(int diners) {
    var children = <Widget>[];

    for (var i = 0; i < diners; i++) {
      children.add(const Icon(Icons.face));
    }

    return children;
  }

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var tabs = createTabs(appState.diners);
    var children = createChildren(appState.diners);

    return MaterialApp(
      home: DefaultTabController(
        length: appState.diners,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(children: children),
        ),
      ),
    );
  }
}
