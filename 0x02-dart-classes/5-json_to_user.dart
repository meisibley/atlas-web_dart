class User {
  String name;
  int age;
  double height;
  int id;

  User({required this.name, required this.age, required this.height, required this.id});

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  static User fromJson(Map<String, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }
    
  @override
  String toString() {
      return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }
}