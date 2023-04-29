import 'package:hive_flutter/hive_flutter.dart';
import 'package:sheepmanager/Features/ExploreLivestockScreen/Data/Model/livestock_model.dart';

part 'farm_model.g.dart';

@HiveType(typeId: 2)
class FarmModel extends HiveObject {
  @HiveField(0)
  String? farmID;
  @HiveField(1)
  String? owner;
  @HiveField(2)
  String? address;
  @HiveField(3)
  List<dynamic>? livestockList = [LivestockModel()];
  @HiveField(4)
  LivestockModel? livestock;
  @HiveField(5)
  String? lastUpdate;

  FarmModel({
    this.farmID,
    this.owner,
    this.address,
    this.livestockList,
    this.livestock,
    this.lastUpdate,
  });
}
