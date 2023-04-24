import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/constValues.dart';

part 'farm_cubit_state.dart';

class FarmCubitCubit extends Cubit<FarmCubitState> {
  FarmCubitCubit() : super(FarmCubitInitial());

  fetchAllFarms() async {
    emit(FarmCubitLoading());
    var farmBox = Hive.box<FarmModel>(kFarmBox);
    List<FarmModel> farmList = farmBox.values.toList();
    emit(FarmCubitSuccess(farmList));
  }
}
