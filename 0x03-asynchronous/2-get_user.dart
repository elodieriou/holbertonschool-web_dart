import './2-util.dart';
import 'dart:async';

Future<void> getUser() async {
  try {
    await fetchUserData();
  } catch (error) {
    print('error caught: $error');
  }
}
