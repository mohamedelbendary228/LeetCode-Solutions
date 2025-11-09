class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    Map<int, int> freqArray = {};
    for (int i = 0; i < numbers.length; i++) {
        int subtractedNumber = target - numbers[i];
        if (freqArray.containsKey(subtractedNumber)) {
        return [freqArray[subtractedNumber]! + 1, i + 1];
        }
        freqArray[numbers[i]] = i;
    }

    return [];
  }
}