import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/Core/Utils/observer.dart';
import 'package:sheepmanager/Core/Utils/router.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';
import 'package:sheepmanager/Features/ProfileScreen/Bloc%20Manager/userCubit/user_cubit.dart';

import 'package:sheepmanager/constValues.dart';

import 'Features/ExploreLivestockScreen/Data/Model/livestock_model.dart';
import 'Features/ExploreLivestockScreen/Presentation/Bloc Manager/LivestockCubit/Livestock_cubit.dart';
import 'Features/ProfileScreen/Data/Model/user_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(LivestockModelAdapter());
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(FarmModelAdapter());
  await Hive.openBox<LivestockModel>(kSheepBox);
  await Hive.openBox<UserModel>(kUserBox);
  await Hive.openBox<FarmModel>(kFarmBox);
  Bloc.observer = LivestockObserver();
  runApp(const LivestockApp());
}

class LivestockApp extends StatelessWidget {
  const LivestockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FarmCubitCubit()..fetchAllFarms(),
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
