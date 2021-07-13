import 'package:dashboard_ui_app/screens/dashoboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  const DashboardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DashboardScreen(),
        backgroundColor: Colors.lightBlue[50],
      ),
    );
  }
}
