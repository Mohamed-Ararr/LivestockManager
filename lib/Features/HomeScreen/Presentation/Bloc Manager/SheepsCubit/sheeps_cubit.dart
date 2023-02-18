import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../Data/Model/sheep_model.dart';

part 'sheeps_state.dart';

class SheepsCubit extends Cubit<SheepsState> {
  SheepsCubit() : super(SheepsInitial());

  fetchAllSheep() async {
    emit(SheepsLoading());
    try {
      var sheepBox = Hive.box<SheepModel>(kSheepBox);
      List<SheepModel> sheepList = sheepBox.values.toList();
      emit(SheepsSuccess(sheepList));
    } catch (e) {
      emit(SheepsFailed(e.toString()));
    }
  }
}
