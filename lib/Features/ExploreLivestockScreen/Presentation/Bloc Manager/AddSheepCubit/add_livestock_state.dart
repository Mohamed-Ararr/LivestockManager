part of 'add_livestock_cubit.dart';

@immutable
abstract class AddLivestockState {}

class AddLivestockInitial extends AddLivestockState {}

class AddLivestockLoading extends AddLivestockState {}

class AddLivestockSuccess extends AddLivestockState {}

class AddLivestockFailure extends AddLivestockState {
  final String errMsg;

  AddLivestockFailure(this.errMsg);
}
