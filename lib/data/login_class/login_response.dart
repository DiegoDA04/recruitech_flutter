class LoginResponse {
  int? id;
  String? username;
  String? email;
  String? token;

  LoginResponse({this.id, this.username, this.email, this.token});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    token = json['token'];
  }
}
