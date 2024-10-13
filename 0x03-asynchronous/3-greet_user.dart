import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userName = userMap['username'];
    return "Hello $userName";
  } catch(err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  bool credential = await checkCredentials();
  if(credential) {
    print('There is a user: true');
    return greetUser();
  } else {
    print('There is a user: false');
    return 'Wrong credentials';
  }
}