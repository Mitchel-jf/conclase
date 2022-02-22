class User {
  final String firstName, lastName, email;
  User.fromJSON(Map<String, dynamic> json)
      : firstName = json['data']['firstName'],
        lastName = json['data']['lastName'],
        email = json['data']['email'];

  Map<String, String> toJson() {
    return {
      firstName: firstName,
      lastName: lastName,
      email: email,
    };
  }
}
