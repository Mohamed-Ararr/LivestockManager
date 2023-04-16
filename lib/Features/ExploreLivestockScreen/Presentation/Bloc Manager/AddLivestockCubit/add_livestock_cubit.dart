import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../../HomeScreen/Data/Models/farm_model.dart';
import '../../../Data/Model/livestock_model.dart';

part 'add_livestock_state.dart';

class AddLivestockCubit extends Cubit<AddLivestockState> {
  AddLivestockCubit() : super(AddLivestockInitial());

  addNewLivestock(LivestockModel livestock) async {
    emit(AddLivestockLoading());

    try {
      var livestockBox = Hive.box<LivestockModel?>(kSheepBox);
      await livestockBox.add(livestock);
      emit(AddLivestockSuccess());
    } catch (e) {
      emit(AddLivestockFailure(e.toString()));
    }
  }
}
