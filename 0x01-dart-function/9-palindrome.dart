bool isPalindrome(String s) {
  int lenString = s.length;
  if (lenString <= 2) return false;

  int left = 0;
  int right = lenString - 1;

  return checkPalindrome(s, left, right);
}

bool checkPalindrome(String s, int left, int right) {
  if (left >= right) return true;
  if (s[left] != s[right]) return false;
  return checkPalindrome(s, left + 1, right - 1);
}
