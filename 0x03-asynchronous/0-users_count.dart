import 'dart:async';
import 'dart:io';

Future<void> usersCount() async {
  // Simulate fetching data from an API
  int count = await fetchUsersCount();

  // Print the number of users
  print(count);
}

// Simulated function to fetch user count from an API
Future<int> fetchUsersCount() => Future.delayed(
  const Duration(seconds: 2),
      () => 19,
);
