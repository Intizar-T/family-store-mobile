import 'package:flutter/material.dart';
import 'package:family_store/widgets/tab_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const List<String> drawerOptionNames = <String>[
    "Almaly",
    "Almalymy",
    "Alyndy"
  ];
  int _selectedIndex = 0;
  String _title = drawerOptionNames[0];
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

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _title = drawerOptionNames[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
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
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Tashov's Store"),
            ),
            ListTile(
              title: Text(drawerOptionNames[0]),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(drawerOptionNames[1]),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(drawerOptionNames[2]),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
