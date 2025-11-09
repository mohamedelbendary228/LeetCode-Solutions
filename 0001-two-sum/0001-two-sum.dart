class Solution {
    List<int> twoSum(List<int> nums, int target) {
    Map<int, int> freqArray = {};
    for (int i = 0; i < nums.length; i++) {
        int subtractedNumber = target - nums[i];
        if (freqArray.containsKey(subtractedNumber)) {
        return [freqArray[subtractedNumber]!, i];
        }
        freqArray[nums[i]] = i;
    }

    return [];
  }
}