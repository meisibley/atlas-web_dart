class Password {
  String _password = '';
  Password({required String password}) : _password = password;
  String get password => _password;
  set password(String password) {
    _password = password;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }
    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasNumber = _password.contains(RegExp(r'[0-9]'));
    return hasUppercase && hasLowercase && hasNumber;
  }
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}

class User {
  String name;
  int age;
  double height;
  int id;
  Password? uPassword;

  User({
    required this.name,
    required this.age,
    required this.height,
    required this.id,
    String? userPassword,
  }) {
    if (userPassword != null) {
      uPassword = Password(password: userPassword);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'userPassword': uPassword?.password ?? 'No Password',
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      userPassword: userJson['userPassword'],
    );
  }
    
  @override
  String toString() {
      return 'User(id : $id ,name: $name, age: $age, height: $height, password: ${uPassword?.password ?? "No Password"})';
  }

  void user_password(String newPassword) {
    uPassword = Password(password: newPassword);
    print(uPassword!.isValid() ? "Password is valid" : "Password is not valid");
  }
}