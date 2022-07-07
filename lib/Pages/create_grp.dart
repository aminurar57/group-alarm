import 'package:flutter/material.dart';

class createPage extends StatefulWidget {
  const createPage({Key? key}) : super(key: key);

  @override
  State<createPage> createState() => _createPageState();
}

class _createPageState extends State<createPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'Create Group',
      ),
    );
  }
}
