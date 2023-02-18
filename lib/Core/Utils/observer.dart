import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SheepObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {}

  @override
  void onClose(BlocBase bloc) {
    debugPrint("closed $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("created $bloc");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}
