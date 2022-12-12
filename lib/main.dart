import 'package:flutter/material.dart';
import 'package:ui_design/screens/splash_screen.dart';

void main() {
  runApp(const UIDesign());
}

class UIDesign extends StatelessWidget {
  const UIDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const splashScreen(),
    );
  }
}
