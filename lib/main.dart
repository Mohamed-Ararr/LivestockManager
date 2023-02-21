import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/Core/Utils/observer.dart';
import 'package:sheepmanager/Core/Utils/router.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/SheepsCubit/sheeps_cubit.dart';
import 'package:sheepmanager/Features/ProfileScreen/Bloc%20Manager/userCubit/user_cubit.dart';

import 'package:sheepmanager/constValues.dart';

import 'Features/HomeScreen/Data/Model/sheep_model.dart';
import 'Features/ProfileScreen/Data/Model/user_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SheepModelAdapter());
  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox<SheepModel>(kSheepBox);
  await Hive.openBox<UserModel>(kUserBox);
  Bloc.observer = SheepObserver();
  runApp(const SheepApp());
}

class SheepApp extends StatelessWidget {
  const SheepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SheepsCubit()..fetchAllSheep(),
        ),
        BlocProvider(
          create: (context) => UserCubit()..getActuallUser(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.routes,
        theme: ThemeData(
          fontFamily: "Armata",
        ),
      ),
    );
  }
}
