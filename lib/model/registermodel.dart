class UserModel {
  final String? userPhoto;
  final String fullName;
  final String username;
  final String dateOfBirth;
  final String email;
  final String password;
  final String? description;

  UserModel({
    this.userPhoto,
    required this.fullName,
    required this.username,
    required this.dateOfBirth,
    required this.email,
    required this.password,
    this.description,
  });

  
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userPhoto: json['userPhoto'],
      fullName: json['fullName'],
      username: json['username'],
      dateOfBirth: json['dateOfBirth'],
      email: json['email'],
      password: "", 
      description: json['description'],
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'userPhoto': userPhoto ?? "",
      'fullName': fullName,
      'username': username,
      'dateOfBirth': dateOfBirth,
      'email': email,
      'password': password,
      'description': description ?? "",
    };
  }
}
