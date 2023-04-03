// ignore_for_file: file_names

import 'package:hive/hive.dart';

part 'livestock_model.g.dart';

@HiveType(typeId: 0)
class LivestockModel extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? type;
  @HiveField(2)
  String? sexe;
  @HiveField(3)
  int? weight;
  @HiveField(4)
  int? age;
  @HiveField(5)
  String? lastBirth;
  @HiveField(6)
  int? children;
  @HiveField(7)
  String? lastVisit;
  @HiveField(8)
  String? gestation;
  @HiveField(9)
  String? pregenancyProgress;

  LivestockModel({
    required this.id,
    required this.type,
    required this.sexe,
    required this.weight,
    required this.age,
    required this.lastBirth,
    required this.children,
    required this.lastVisit,
    required this.gestation,
    required this.pregenancyProgress,
  });
}
