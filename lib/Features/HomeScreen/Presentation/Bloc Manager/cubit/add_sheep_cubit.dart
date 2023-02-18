import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Model/sheep_model.dart';
import 'package:sheepmanager/constValues.dart';

part 'add_sheep_state.dart';

class AddSheepCubit extends Cubit<AddSheepState> {
  AddSheepCubit() : super(AddSheepInitial());

  addNewSheep(SheepModel sheep) async {
    emit(AddSheepLoading());

    try {
      var notesBox = Hive.box<SheepModel>(kSheepBox);
      await notesBox.add(sheep);
      emit(AddSheepSuccess());
    } catch (e) {
      emit(AddSheepFailure(e.toString()));
    }
  }
}
