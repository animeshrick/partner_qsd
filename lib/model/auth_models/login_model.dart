class LoginModel {
  LoginModel({
    required this.status,
    required this.data,
  });

  final String status;
  final LoginData? data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        data:
            json["data"] == null ? json[""] : LoginData.fromJson(json["data"]),
      );
}

class LoginData {
  LoginData({
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.status,
    required this.userType,
    required this.apiToken,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String name;
  final String email;
  final String emailVerifiedAt;
  final String address;
  final String latitude;
  final String longitude;
  final String status;
  final String userType;
  final String apiToken;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"] ?? '',
        address: json["address"] ?? '',
        latitude: json["latitude"] ?? "",
        longitude: json["longitude"] ?? '',
        status: json["status"],
        userType: json["user_type"],
        apiToken: json["api_token"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}
