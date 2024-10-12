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
  Password? _userPassword;

  User({
    required this.name,
    required this.age,
    required this.height,
    required this.id,
    String? user_password,
  }) {
    if (user_password != null) {
      _userPassword = Password(password: user_password);
    }
  }

  String get user_password => _userPassword?.password ?? 'No Password';

  set user_password(String newPassword) {
    _userPassword = Password(password: newPassword);
    //print(_userPassword!.isValid() ? "Password is valid" : "Password is not valid");
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      //'user_password': _userPassword?.password ?? 'No Password',
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }
    
  @override
  String toString() {
    bool pwdValid = _userPassword?.isValid() ?? false;
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: $pwdValid)';
  }
}