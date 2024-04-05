// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LaibModel {
  String name;
  String address;
  String laibId;
  String password;
   LaibModel({
    this.name="",
    this.address="",
     this.laibId="",
    this.password="",
  });
  

  LaibModel copyWith({
    String? name,
    String? address,
    String? laibId,
    String? password,
  }) {
    return LaibModel(
      name: name ?? this.name,
      address: address ?? this.address,
      laibId: laibId ?? this.laibId,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'address': address,
      'laibId': laibId,
      'password': password,
    };
  }

  factory LaibModel.fromMap(Map<String, dynamic> map) {
    return LaibModel(
      name: (map["name"] ?? '') as String,
      address: (map["address"] ?? '') as String,
      laibId: (map["laibId"] ?? '') as String,
      password: (map["password"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LaibModel.fromJson(String source) => LaibModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LaibModel(name: $name, address: $address, laibId: $laibId, password: $password)';
  }

  @override
  bool operator ==(covariant LaibModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.address == address &&
      other.laibId == laibId &&
      other.password == password;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      address.hashCode ^
      laibId.hashCode ^
      password.hashCode;
  }
}
