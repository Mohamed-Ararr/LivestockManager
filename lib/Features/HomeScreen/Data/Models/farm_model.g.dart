// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FarmModelAdapter extends TypeAdapter<FarmModel> {
  @override
  final int typeId = 2;

  @override
  FarmModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FarmModel(
      farmID: fields[0] as String?,
      owner: fields[1] as String?,
      address: fields[2] as String?,
      livestockList: fields[3] as dynamic,
      livestock: fields[4] as LivestockModel?,
    );
  }

  @override
  void write(BinaryWriter writer, FarmModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.farmID)
      ..writeByte(1)
      ..write(obj.owner)
      ..writeByte(2)
      ..write(obj.address)
      ..writeByte(3)
      ..write(obj.livestockList)
      ..writeByte(4)
      ..write(obj.livestock);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FarmModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
