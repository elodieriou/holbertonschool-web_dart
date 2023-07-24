import './3-util.dart';
import 'dart:async';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();

    Map<String, dynamic> userDataMap = jsonDecode(userData);
    String username = userDataMap['username'];

    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool isValidUser = await checkCredentials();
    print('There is a user: $isValidUser');

    return (isValidUser) ? await greetUser() : 'Wrong credentials';
  } catch (error) {
    return 'error caught: $error';
  }
}
