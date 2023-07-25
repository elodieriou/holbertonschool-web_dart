import './1-util.dart';
import 'dart:async';
import 'dart:convert';

Future<String> getUserId() async {
  String userDataJson = await fetchUserData();

  Map<String, dynamic> userData = jsonDecode(userDataJson);
  String userID = userData['id'];

  return userID;
}
