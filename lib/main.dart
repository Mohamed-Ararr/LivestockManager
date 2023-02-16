import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/Core/Utils/router.dart';
import 'package:sheepmanager/constValues.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kSheepBox);
  runApp(const SheepApp());
}

class SheepApp extends StatelessWidget {
  const SheepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.routes,
      theme: ThemeData(
        textTheme: GoogleFonts.armataTextTheme(
          ThemeData.light().textTheme,
        ),
      ),
    );
  }
}
