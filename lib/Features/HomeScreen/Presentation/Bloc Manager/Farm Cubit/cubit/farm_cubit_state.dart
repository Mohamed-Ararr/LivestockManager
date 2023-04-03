part of 'farm_cubit_cubit.dart';

@immutable
abstract class FarmCubitState {}

class FarmCubitInitial extends FarmCubitState {}

class FarmCubitLoading extends FarmCubitState {}

class FarmCubitSuccess extends FarmCubitState {
  final List<FarmModel> farmList;

  FarmCubitSuccess(this.farmList);
}
