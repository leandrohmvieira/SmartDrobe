import 'package:flutter/material.dart';
import 'package:smart_drobe/dashboard_page.dart';
import 'package:smart_drobe/request_send.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'SmartDrobe',
    theme: new ThemeData(
      primarySwatch: Colors.purple,
    ),
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("SmartDrobe v0.1"),
      ),
      body: new DashboardPage()

    ),

  ));
}
