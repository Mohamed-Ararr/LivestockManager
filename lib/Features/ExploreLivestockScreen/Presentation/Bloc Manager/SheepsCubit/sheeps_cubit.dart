import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../Data/Model/livestock_model.dart';

part 'sheeps_state.dart';

class LivestockCubit extends Cubit<LivestockState> {
  LivestockCubit() : super(LivestockInitial());

  fetchAllSheep() {
    emit(LivestockLoading());
    var sheepBox = Hive.box<LivestockModel>(kSheepBox);
    List<LivestockModel> sheepList = sheepBox.values.toList();
    emit(LivestockSuccess(sheepList));
  }
}
