import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/constValues.dart';

part 'add_farm_state.dart';

class AddFarmCubit extends Cubit<AddFarmState> {
  AddFarmCubit() : super(AddFarmInitial());

  addNewFarm(FarmModel farm) async {
    emit(AddFarmLoading());

    try {
      var farmBox = Hive.box<FarmModel>(kFarmBox);
      await farmBox.add(farm);
      emit(AddFarmSuccess());
    } catch (e) {
      emit(AddFarmFailure(e.toString()));
    }
  }
}
