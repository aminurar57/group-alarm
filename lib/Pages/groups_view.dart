import 'package:flutter/material.dart';

class groupsPage extends StatefulWidget {
  const groupsPage({Key? key}) : super(key: key);

  @override
  State<groupsPage> createState() => _groupsPageState();
}

class _groupsPageState extends State<groupsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'View Created Groups',
      ),
    );
  }
}
