import './2-util.dart';
import 'dart:async';

Future<void> getUser() async {
  try {
    String userData = await fetchUserData();
    print(userData.toString());
  } catch (error) {
    print('error caught: $error');
  }
}
