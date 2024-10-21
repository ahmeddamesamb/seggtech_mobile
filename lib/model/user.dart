import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int? id;
  String? nom;
  String? email;
  String? telephone;
  String? photoUrl;
  String? photo;
  String? password;
  bool? isActive;

  User({
    this.id,
    this.nom,
    this.email,
    this.telephone,
    this.photoUrl,
    this.photo,
    this.password,
    this.isActive,
  });

  // Méthode fromJson générée
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // Méthode toJson générée
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
