part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserSuccess extends UserState {
  // final List<UserModel> userList;
  final String fistName;
  final String lastName;

  UserSuccess(this.fistName, this.lastName);
}
