import 'package:json_annotation/json_annotation.dart';

part 'mesure.g.dart';

@JsonSerializable()
class Mesure {
  int? id;
  String? temperature;
  String? tds;
  String? turbidite;
  String? ph;
  String? conductivite;
  String? oxygene;
  DateTime? timestamp;

  Mesure(
      {this.id,
      this.temperature,
      this.tds,
      this.turbidite,
      this.ph,
      this.conductivite,
      this.oxygene,
      this.timestamp});
}
