part of 'add_sheep_cubit.dart';

@immutable
abstract class AddSheepState {}

class AddSheepInitial extends AddSheepState {}

class AddSheepLoading extends AddSheepState {}

class AddSheepSuccess extends AddSheepState {}

class AddSheepFailure extends AddSheepState {
  final String errMsg;

  AddSheepFailure(this.errMsg);
}
