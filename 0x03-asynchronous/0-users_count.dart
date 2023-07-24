import 'dart:async';

Future<void> usersCount() async {
  // Simulate fetching data from an API
  int count = await fetchUsersCount();

  // Print the number of users
  print(count);
}
