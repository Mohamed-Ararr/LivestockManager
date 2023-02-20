part of 'add_user_name_cubit.dart';

@immutable
abstract class AddUserNameState {}

class AddUserNameInitial extends AddUserNameState {}

class AddUserNameLoading extends AddUserNameState {}

class AddUserNameSuccess extends AddUserNameState {}
