import '9-palindrome.dart';

String longestPalindrome(String s) {
  int len = s.length;
  if (len < 3) {
    return '';
  }
  String lstPal = '';
  for (int i = 0; i < len; i++) {
    for (int j = i + 3; j <= len; j++) {
      String subStr = s.substring(i, j);
      if (isPalindrome(subStr) && subStr.length > lstPal.length) {
        lstPal = subStr;
      }
    }
  }
  return lstPal.isEmpty ? 'none' : lstPal;
}