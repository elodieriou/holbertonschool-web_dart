import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final characters = jsonData['results'] as List<dynamic>;

      for (final character in characters) {
        print('${character['name']}');
      }
    } else {
      throw 'Failed to load characters: ${response.statusCode}';
    }
  } catch (error) {
    print('error caught: $error');
  }
}
