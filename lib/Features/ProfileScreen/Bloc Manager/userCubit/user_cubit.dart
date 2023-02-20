import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/Features/ProfileScreen/Data/Model/user_model.dart';
import 'package:sheepmanager/constValues.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  getActuallUser() {
    emit(UserLoading());
    var userBox = Hive.box<UserModel>(kUserBox);
    var userList = userBox.values.toList();
    for (int i = 0; i < userList.length - 1; i++) {
      userList[i].delete();
    }
    String firstName = userList[0].firstName;
    String lastName = userList[0].lastName;

    emit(UserSuccess(firstName, lastName));
  }
}
