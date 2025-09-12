class Solution {
bool areOccurrencesEqual(String s) {

  Map<String, int> frMap = {};
  
  for (int i = 0; i < s.length; i++) {
    final char = s[i];
    if (frMap.containsKey(char)) {
      frMap[char] = (frMap[char] ?? 0) + 1;
    } else {
      frMap[char] = 1;
    }
  }

  final firstCount = frMap.values.first;

  for (int value in frMap.values) {
    if (value != firstCount) {
      return false;
    }
  }

  return true;
}
}