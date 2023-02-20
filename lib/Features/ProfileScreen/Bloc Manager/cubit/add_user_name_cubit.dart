import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/Features/ProfileScreen/Data/Model/user_model.dart';
import 'package:sheepmanager/constValues.dart';

part 'add_user_name_state.dart';

class AddUserNameCubit extends Cubit<AddUserNameState> {
  AddUserNameCubit() : super(AddUserNameInitial());

  addUser(UserModel user) async {
    emit(AddUserNameLoading());
    var userBox = Hive.box<UserModel>(kUserBox);
    await userBox.add(user);
    emit(AddUserNameSuccess());
  }
}
