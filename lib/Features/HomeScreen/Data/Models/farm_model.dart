import 'package:hive_flutter/hive_flutter.dart';

part 'farm_model.g.dart';

@HiveType(typeId: 2)
class FarmModel extends HiveObject {
  @HiveField(0)
  String? farmID;
  @HiveField(1)
  String? owner;
  @HiveField(2)
  String? address;

  FarmModel({
    this.farmID,
    this.owner,
    this.address,
  });
}
