bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  int halfLength = s.length ~/ 2;
  for (int i = 0; i < halfLength; i++) {
    if (s[i] != s[s.length - i - 1]) {
      return false;
    }
  }
  return true;
}