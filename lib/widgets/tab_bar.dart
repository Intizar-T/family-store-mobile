import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget(
      {required this.length,
      this.leadingAppBar,
      this.titleAppBar,
      this.actionsAppBar,
      required this.tabs,
      required this.tabsView,
      this.floatingActionButtons,
      super.key});

  final int length;
  final Widget? leadingAppBar;
  final Widget? titleAppBar;
  final List<Widget>? actionsAppBar;
  final List<Widget> tabs;
  final List<Widget> tabsView;
  final List<Widget>? floatingActionButtons;

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
          floatingActionButton: floatingActionButtons != null
              ? Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: floatingActionButtons!,
                  ),
                )
              : null,
        ));
  }
}
