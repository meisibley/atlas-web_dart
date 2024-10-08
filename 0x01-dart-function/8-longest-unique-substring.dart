String longestUniqueSubstring(String str) {
  int maxSubLength = 0;
  int subStartInd = 0;
  String lstSub = '';
  Map<String, int> subStringSet = {};
  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];
    if (subStringSet.containsKey(currentChar) && subStringSet[currentChar]! >= subStartInd) {
      subStartInd = subStringSet[currentChar]! + 1;
    }
    subStringSet[currentChar] = i;
    int currentLength = i - subStartInd + 1;
    if (currentLength > maxSubLength) {
      maxSubLength = currentLength;
      lstSub = str.substring(subStartInd, i + 1);
    }
  }
  return lstSub;
}