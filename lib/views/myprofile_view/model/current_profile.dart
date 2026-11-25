class CurrentProfile {
  final bool success;
  final String message;
  final Data data;

  CurrentProfile({
    required this.success,
    required this.message,
    required this.data,
  });

  factory CurrentProfile.fromJson(Map<String, dynamic> json) {
    return CurrentProfile(
      success: json['success'],
      message: json['message'],
      data: Data.fromJson(json['data']),
    );
  }
}

class Data {
  final String uuid;
  final String firstName;
  final String lastName;
  final String address;
  final String base64Image;
  final String gmail;
  final bool isVerified;
  final DateTime createAt;
  final DateTime updateAt;

  Data({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.base64Image,
    required this.gmail,
    required this.isVerified,
    required this.createAt,
    required this.updateAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      uuid: json['uuid'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      address: json['address'],
      base64Image: json['base64Image'],
      gmail: json['gmail'],
      isVerified: json['is_verified'],
      createAt: DateTime.parse(json['create_At']),
      updateAt: DateTime.parse(json['update_At']),
    );
  }
}