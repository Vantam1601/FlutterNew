class LoginAuth {
  String? email;
  String? password;
  LoginAuth({this.email, this.password});

  factory LoginAuth.fromJson(Map<String, dynamic> jsonData) {
    return LoginAuth(
      email: jsonData['email'],
      password: jsonData['password'],
    );
  }
  // chuyển dối tượng thành map
  static Map<String, dynamic> toMap(LoginAuth loginAuth) => {
        'email': loginAuth.email,
        'password': loginAuth.password,
      };
}
