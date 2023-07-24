import 'dart:async';

Future<void> getUser() async {
  try {
    String userData = await fetchUserData();
    print('User Data: $userData');
  } catch (error) {
    print('error caught: $error');
  }
}

Future<String> fetchUserData() => Future.delayed(
  const Duration(seconds: 2),
      () => throw 'Cannot locate user',
);
