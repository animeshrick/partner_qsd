class RegisterModel {
  RegisterModel({
    required this.status,
    required this.data,
    required this.message,
  });

  final String status;
  final RegisterData data;
  final String message;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        status: json["status"],
        data: RegisterData.fromJson(json["data"]),
        message: json["message"],
      );
}

class RegisterData {
  RegisterData({
    required this.name,
    required this.email,
    required this.userType,
    required this.apiToken,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  final String name;
  final String email;
  final String userType;
  final String apiToken;
  final DateTime updatedAt;
  final DateTime createdAt;
  final int id;

  factory RegisterData.fromJson(Map<String, dynamic> json) => RegisterData(
        name: json["name"],
        email: json["email"],
        userType: json["user_type"],
        apiToken: json["api_token"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );
}
