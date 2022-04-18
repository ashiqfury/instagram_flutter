class User {
  final String uid;
  final String username;
  final String email;
  final String bio;
  final String photoUrl;
  final String password; //* password is not needed!
  final List followers;
  final List followings;

  const User({
    required this.uid,
    required this.username,
    required this.email,
    required this.password,
    required this.bio,
    required this.photoUrl,
    required this.followers,
    required this.followings,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'username': username,
      'email': email,
      'password': password,
      'photoUrl': photoUrl,
      'bio': bio,
      'followers': followers,
      'followings': followings,
    };
  }
}
