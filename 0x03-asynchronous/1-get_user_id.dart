import 'dart:async';
import 'dart:convert'; // For parsing JSON

Future<String> getUserID() async {
  String userDataJson = await fetchUserData();

  // Parse the JSON data to get the user ID
  Map<String, dynamic> userData = jsonDecode(userDataJson);
  String userID = userData['id'];

  return userID;
}

Future<String> fetchUserData() => Future.delayed(
  const Duration(seconds: 2),
      () =>
  '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
);
