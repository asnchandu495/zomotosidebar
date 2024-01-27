import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sidebardynamic/models/drawermodel.dart';
import 'package:sidebardynamic/screens/sidebar_page.dart';

import 'menu_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sidebar.json');
    final data = await json.decode(response);
    final parsed = DrawerMenu.fromJson(data);

    setState(() {
      print(parsed.lastName);
      drawerMenu = parsed;
      print(parsed);

    });
  }

  @override
  void initState() {

    super.initState();
    setState(() {
      readJson();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer:   const MenuPage(),
      body: Center(
        child: Text(widget.title),
      ),

    );
  }
}
