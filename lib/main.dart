import 'package:divar_ui/screen/add_page.dart';
import 'package:divar_ui/screen/home_screen.dart';
import 'package:divar_ui/screen/item_detail.dart';
import 'package:divar_ui/screen/login1.dart';
import 'package:divar_ui/screen/login2.dart';
import 'package:divar_ui/screen/profile_screen.dart';
import 'package:divar_ui/screen/signup1.dart';
import 'package:divar_ui/screen/signup2.dart';
import 'package:divar_ui/screen/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WellcomePage(),
    );
  }
}
