import 'package:flutter/material.dart';
import 'package:family_store/widgets/tab_bar.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final List<Widget> tabs = [
    Tab(text: 'Pyatorychka'),
    Tab(text: 'Fix Price'),
    Tab(text: 'Bashka')
  ];
  final List<Widget> tabsView = [
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

  static const TextStyle drawerOptionsStyle =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold);
  static const TextStyle drawerHeaderStyle =
      TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Almaly'),
        ),
        body: Center(
          child: TabBarWidget(
            length: 3,
            tabs: tabs,
            tabsView: tabsView,
            // leadingAppBar: const IconButton(
            //   onPressed: null,
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Navigation menu',
            // ),
            // actionsAppBar: [
            //   IconButton(
            //     onPressed: null,
            //     icon: Icon(Icons.search),
            //     tooltip: 'Search',
            //   )
            // ],
            // titleAppBar: Text('Almaly'),
            floatingActionButtons: [
              FloatingActionButton(
                onPressed: () {},
                tooltip: 'Notification',
                child: Icon(Icons.notifications),
              ),
              FloatingActionButton(
                onPressed: () {},
                tooltip: 'Add',
                child: Icon(Icons.add),
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Expanded(
                      child: Center(
                    child: Text(
                      "Tashov's Store",
                      style: drawerHeaderStyle,
                    ),
                  ))),
              ListTile(
                title: const Text(
                  'Almaly',
                  style: drawerOptionsStyle,
                ),
                onTap: () {
                  // go to Item 1 page
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  'Almalymy',
                  style: drawerOptionsStyle,
                ),
                onTap: () {
                  // go to Item 2 page
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  'Alyndy',
                  style: drawerOptionsStyle,
                ),
                onTap: () {
                  // go to Item 2 page
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
