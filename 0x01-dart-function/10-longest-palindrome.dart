import '9-palindrome.dart';

String longestPalindrome(String s) {
  int lenString = s.length;
  if (lenString <= 2) return 'none';

  String currentSubstring = '';
  String longestSubstring = '';
  int maxLength = 0;

  for (int i = 0; i < lenString; i++) {
    for (int j = i + 2; j <= lenString; j++) {
      currentSubstring = s.substring(i, j);

      if (isPalindrome(currentSubstring) && currentSubstring.length > maxLength) {
        maxLength = currentSubstring.length;
        longestSubstring = currentSubstring;
      }
    }
  }
  return longestSubstring.isEmpty ? 'none' : longestSubstring;
}
