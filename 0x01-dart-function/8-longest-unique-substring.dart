String longestUniqueSubstring(String str) {
  Map<String, int> counter = {};
  String substring = '';

  for (int i = 0; i < str.length; i++) {
    counter[str[i]] = (counter[str[i]] ?? 0) + 1;

    if (counter[str[i]]! > 0) {
      int startIndex = substring.indexOf(str[i]);
      substring = substring.substring(startIndex + 1);
    }
    substring += str[i];
  }
  return substring;
}
