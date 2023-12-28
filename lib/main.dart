import 'package:flutter/material.dart';
import 'package:gamestation/pages/home.dart';
import 'package:gamestation/theme/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bac_color ,
      ),
      home: Home(),
    );
  }
}
