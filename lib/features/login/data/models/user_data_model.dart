import 'package:mentorship_ecommerce/core/api/end_points.dart';

class UserDataModel {
  final String accessToken;
  final String refreshToken;

  UserDataModel({required this.accessToken, required this.refreshToken});

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
        accessToken: json[ApiKeys.accessToken],
        refreshToken: json[ApiKeys.refreshToken]);
  }
}
