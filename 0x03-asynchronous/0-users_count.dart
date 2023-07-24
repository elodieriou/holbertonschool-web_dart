import './0-util.dart';
import 'dart:async';

Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print(count);
}
