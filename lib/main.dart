import 'src/ui/homepage/home_header.dart';
import 'src/ui/register/regist_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Basic",
      home: RegisterPage(),
    );
  }
}
