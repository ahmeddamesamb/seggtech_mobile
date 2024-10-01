// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mesure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mesure _$MesureFromJson(Map<String, dynamic> json) => Mesure(
      id: (json['id'] as num?)?.toInt(),
      temperature: json['temperature'] as String?,
      tds: json['tds'] as String?,
      turbidite: json['turbidite'] as String?,
      ph: json['ph'] as String?,
      conductivite: json['conductivite'] as String?,
      oxygene: json['oxygene'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$MesureToJson(Mesure instance) => <String, dynamic>{
      'id': instance.id,
      'temperature': instance.temperature,
      'tds': instance.tds,
      'turbidite': instance.turbidite,
      'ph': instance.ph,
      'conductivite': instance.conductivite,
      'oxygene': instance.oxygene,
      'timestamp': instance.timestamp?.toIso8601String(),
    };
