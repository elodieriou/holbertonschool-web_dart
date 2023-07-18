String longestUniqueSubstring(String str) {
  Map<String, int> counter = {};

  for (int i = 0; i < str.length; i++) {
    counter[str[i]] = (counter[str[i]] ?? 0) + 1;
  }

  String result = '';
  for (String key in counter.keys) {
    result += key;
  }
  return result;
}
