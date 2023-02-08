import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Features/SplashScreen/Presentation/SplashView.dart';

void main() {
  runApp(const SheepApp());
}

class SheepApp extends StatelessWidget {
  const SheepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: const Color(0xff1F8A70),
        textTheme: GoogleFonts.armataTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SplashView(),
    );
  }
}
