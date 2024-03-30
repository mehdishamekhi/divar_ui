import 'package:divar_ui/screen/welcome_page.dart';
import 'package:divar_ui/util/font_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.defaultTheme,
      debugShowCheckedModeBanner: false,
      home: const WellcomePage(),
    );
  }
}
