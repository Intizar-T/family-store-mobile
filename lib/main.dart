import 'package:flutter/material.dart';
import 'package:family_store/widgets/tab_bar.dart';

void main() {
  const List<Widget> tabs = [
    Tab(text: 'Pyatorychka'),
    Tab(text: 'Fix Price'),
    Tab(text: 'Bashka')
  ];
  const List<Widget> tabsView = [
    Expanded(
        child: Center(
      child: Text('Pyatorychka'),
    )),
    Expanded(
        child: Center(
      child: Text('Fix Price'),
    )),
    Expanded(
        child: Center(
      child: Text('Bashka'),
    )),
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: TabBarWidget(
            length: 3,
            tabs: tabs,
            tabsView: tabsView,
            leadingAppBar: const IconButton(
              onPressed: null,
              icon: Icon(Icons.menu),
              tooltip: 'Navigation menu',
            ),
            actionsAppBar: [
              IconButton(
                onPressed: null,
                icon: Icon(Icons.search),
                tooltip: 'Search',
              )
            ],
            titleAppBar: Text('Almaly'),
            floatingActionButtons: [
              const FloatingActionButton(
                onPressed: null,
                tooltip: 'Notification',
                child: Icon(Icons.notifications),
              ),
              const FloatingActionButton(
                onPressed: null,
                tooltip: 'Add',
                child: Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
