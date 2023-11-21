import 'package:flutter/material.dart';
import 'package:facetest/doa/list_doa.dart';
import 'package:facetest/home/menu_content.dart';
import 'header_content.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[HeaderContent(), ContentMenu(), ListDoa()],
    );
  }
}
