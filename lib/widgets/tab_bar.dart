import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo(
      {required this.length,
      this.leadingAppBar,
      this.titleAppBar,
      this.actionsAppBar,
      required this.tabs,
      required this.tabsView,
      super.key});

  final int length;
  final Widget? leadingAppBar;
  final Widget? titleAppBar;
  final List<Widget>? actionsAppBar;
  final List<Widget> tabs;
  final List<Widget> tabsView;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: length,
        child: Scaffold(
          appBar: AppBar(
            leading: leadingAppBar,
            title: titleAppBar,
            actions: actionsAppBar,
            bottom: TabBar(tabs: tabs),
          ),
          body: TabBarView(children: tabsView),
        ));
  }
}
