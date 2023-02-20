import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'add_user_name_state.dart';

class AddUserNameCubit extends Cubit<AddUserNameState> {
  AddUserNameCubit() : super(AddUserNameInitial());

  addUser() {}
}
