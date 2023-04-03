part of 'add_farm_cubit.dart';

@immutable
abstract class AddFarmState {}

class AddFarmInitial extends AddFarmState {}

class AddFarmLoading extends AddFarmState {}

class AddFarmSuccess extends AddFarmState {}

class AddFarmFailure extends AddFarmState {
  final String errorMsg;

  AddFarmFailure(this.errorMsg);
}
