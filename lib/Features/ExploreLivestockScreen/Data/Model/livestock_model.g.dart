// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestock_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LivestockModelAdapter extends TypeAdapter<LivestockModel> {
  @override
  final int typeId = 0;

  @override
  LivestockModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LivestockModel(
      id: fields[0] as String?,
      type: fields[1] as String?,
      sexe: fields[2] as String?,
      weight: fields[3] as int?,
      age: fields[4] as int?,
      lastBirth: fields[5] as String?,
      children: fields[6] as int?,
      lastVisit: fields[7] as String?,
      gestation: fields[8] as String?,
      pregenancyProgress: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LivestockModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.sexe)
      ..writeByte(3)
      ..write(obj.weight)
      ..writeByte(4)
      ..write(obj.age)
      ..writeByte(5)
      ..write(obj.lastBirth)
      ..writeByte(6)
      ..write(obj.children)
      ..writeByte(7)
      ..write(obj.lastVisit)
      ..writeByte(8)
      ..write(obj.gestation)
      ..writeByte(9)
      ..write(obj.pregenancyProgress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LivestockModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
