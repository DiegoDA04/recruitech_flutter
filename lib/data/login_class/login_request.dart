class LoginRequest {
  String? email;
  String? password;

  LoginRequest({this.email, this.password});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, String> toJson() {
    final Map<String, String> data = new Map<String, String>();
    data['email'] = this.email!;
    data['password'] = this.password!;
    return data;
  }
}