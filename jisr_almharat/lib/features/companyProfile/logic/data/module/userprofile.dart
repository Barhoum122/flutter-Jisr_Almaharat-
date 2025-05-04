class UserProfile {
  final String name;
  final String email;
  final String fullName;
  final String? profilePhoto;
  final String? gender;
  final String? mobileNo;
  final String? location;
  final List<String> roles;

  UserProfile({
    required this.name,
    required this.email,
    required this.fullName,
    this.profilePhoto,
    this.gender,
    this.mobileNo,
    this.location,
    required this.roles,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      name: json['name'],
      email: json['email'],
      fullName: json['full_name'],
      profilePhoto: json['user_image'],
      gender: json['gender'],
      mobileNo: json['mobile_no'],
      location: json['location'],
      roles: (json['roles'] as List<dynamic>).map((e) => e.toString()).toList(),
    );
  }
}
