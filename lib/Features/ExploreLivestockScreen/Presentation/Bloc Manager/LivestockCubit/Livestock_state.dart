part of 'Livestock_cubit.dart';

@immutable
abstract class LivestockState {}

class LivestockInitial extends LivestockState {}

class LivestockLoading extends LivestockState {}

class LivestockSuccess extends LivestockState {
  final List<LivestockModel> livestockList;

  LivestockSuccess(this.livestockList);
}
