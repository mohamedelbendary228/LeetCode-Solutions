class Solution {
bool areOccurrencesEqual(String s) {

  Map<String, int> frMap = {};
  
  for (int i = 0; i < s.length; i++) {
    frMap[s[i]] = (frMap[s[i]] ?? 0) + 1;
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