import 'package:flutter/material.dart';
import 'package:group_alarm/Pages/groups_view.dart';
import 'package:group_alarm/Pages/home.dart';
import 'package:group_alarm/Pages/create_grp.dart';
import 'package:group_alarm/Pages/settings.dart';
import 'package:group_alarm/Pages/loading.dart';


void main() {
  runApp(const MaterialApp(
    home: AlarmHome(),
  ));
}

class AlarmHome extends StatefulWidget {
  const AlarmHome({Key? key}) : super(key: key);
  @override
  State<AlarmHome> createState() => _AlarmHomeState();
}

class _AlarmHomeState extends State<AlarmHome> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    homePage(),
    createPage(),
    groupsPage(),
    settingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Alarm'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBar.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Alarm',
            backgroundColor: Colors.cyan,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Groups',
            backgroundColor: Colors.tealAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse),
            label: 'clock',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
            backgroundColor: Colors.lightBlueAccent,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}





//