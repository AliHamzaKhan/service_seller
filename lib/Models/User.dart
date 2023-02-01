// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
     this.id,
     this.userName,
     this.email,
    this.address,
    this.addressInLatLng,
     this.image,
  }): appIdentifier =
  'Flutter Login Screen ${kIsWeb ? 'Web' : Platform.operatingSystem}';

  String? id;
  String? userName;
  String? email;
  String? address;
  String? addressInLatLng;
  String? image;
  String appIdentifier;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] ?? "",
    userName: json["userName"]?? "",
    email: json["email"]?? "",
    address: json["address"]?? "",
    addressInLatLng: json["addressInLatLng"]?? "",
    image: json["image"]?? "",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userName": userName,
    "email": email,
    "address": address,
    "addressInLatLng": addressInLatLng,
    "image": image,
    'appIdentifier': appIdentifier,
  };
}

