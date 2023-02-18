part of 'sheeps_cubit.dart';

@immutable
abstract class SheepsState {}

class SheepsInitial extends SheepsState {}

class SheepsLoading extends SheepsState {}

class SheepsSuccess extends SheepsState {
  final List<SheepModel> sheepList;

  SheepsSuccess(this.sheepList);
}

class SheepsFailed extends SheepsState {
  final String errorMsg;

  SheepsFailed(this.errorMsg);
}
