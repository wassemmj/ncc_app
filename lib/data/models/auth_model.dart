class AuthModel {
  String email;
  String? name;
  String password;
  String? coPassword;
  String? address;

  AuthModel({
    required this.email,
    this.name,
    required this.password,
    this.coPassword,
    this.address,
  });

  factory AuthModel.initial() =>
      AuthModel(email: '', name: '', password: '', coPassword: '', address: '');

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      email: json["email"] ?? '',
      name: json["name"] ?? '',
      password: json["password"]  ?? '',
      coPassword: json["password_confirmation"] ?? '',
      address: json["address"] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "name": name ?? '',
      "password": password,
      "password_confirmation": coPassword ?? '',
      "address": address ?? '',
    };
  }
}
