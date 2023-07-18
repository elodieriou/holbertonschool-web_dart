String longestUniqueSubstring(String str) {
  Map<String, int> counter = {};
  String currentSubstring = '';
  String longestSubstring = '';

  for (int i = 0; i < str.length; i++) {
    counter[str[i]] = (counter[str[i]] ?? 0) + 1;

    if (counter[str[i]]! > 0) {
      int startIndex = currentSubstring.indexOf(str[i]);
      currentSubstring = currentSubstring.substring(startIndex + 1);
    }
    currentSubstring += str[i];

    if (currentSubstring.length > longestSubstring.length) longestSubstring = currentSubstring;
  }
  return longestSubstring;
}
