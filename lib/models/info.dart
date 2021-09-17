class Info {
  String? firstName;
  String? lastName;
  String? userName;
  String? numberPhone;
  String? email;
  String? password;
  Info(
      {this.firstName,
      this.lastName,
      this.userName,
      this.numberPhone,
      this.email,
      this.password});
  Info.formJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    userName = json['userName'];
    numberPhone = json['numberPhone'];
    email = json['email'];
    password = json['password'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['userName'] = this.userName;
    data['numberPhone'] = this.numberPhone;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
