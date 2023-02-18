import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/Core/Utils/observer.dart';
import 'package:sheepmanager/Core/Utils/router.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/SheepsCubit/sheeps_cubit.dart';
import 'package:sheepmanager/constValues.dart';

import 'Features/HomeScreen/Data/Model/sheep_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SheepModelAdapter());
  await Hive.openBox<SheepModel>(kSheepBox);
  Bloc.observer = SheepObserver();
  runApp(const SheepApp());
}

class SheepApp extends StatelessWidget {
  const SheepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SheepsCubit()..fetchAllSheep(),
      child: MaterialApp.router(
        routerConfig: AppRouter.routes,
        theme: ThemeData(
          textTheme: GoogleFonts.armataTextTheme(
            ThemeData.light().textTheme,
          ),
        ),
      ),
    );
  }
}
