class Register {
  String? name;
  String? email;
  String? numberPhone;
  String? password;
  String? passwordConfirmation;

  Register({
    required this.name,
    required this.email,
    required this.numberPhone,
    required this.password,
    required this.passwordConfirmation,
  });
  Register.fromjson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.email = json['email'];
    this.numberPhone = json['handphone'];
    this.password = json['password'];
    this.passwordConfirmation = json['password_confirmation'];
  }
}
