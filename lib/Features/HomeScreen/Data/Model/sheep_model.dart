// ignore_for_file: file_names

import 'package:hive/hive.dart';

part 'sheep_model.g.dart';

@HiveType(typeId: 0)
class SheepModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String state;
  @HiveField(2)
  final String sexe;
  @HiveField(3)
  final int weight;
  @HiveField(4)
  final int age;
  @HiveField(5)
  final String lastBirth;
  @HiveField(6)
  final int children;
  @HiveField(7)
  final String lastVisit;

  SheepModel({
    required this.id,
    required this.state,
    required this.sexe,
    required this.weight,
    required this.age,
    required this.lastBirth,
    required this.children,
    required this.lastVisit,
  });
}
