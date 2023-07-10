class UserModel {
  final String id;
  final String fullName;
  final String email;
  final String phone;
  final String address;
  final String profileImage;

  UserModel({
    this.id = '',
    required this.fullName,
    required this.email,
    required this.phone,
    required this.address,
    this.profileImage = '',
  });

  static fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      fullName: json["fullName"],
      email: json["email"],
      phone: json["phone"],
      address: json["address"],
      profileImage: json["profileImage"],
    );
  }

  static toJson(UserModel user) {
    return {
      'id': user.id,
      'fullName': user.fullName,
      'email': user.email,
      'phone': user.phone,
      'address': user.address,
      'profileImage': user.profileImage,
    };
  }
}
