class Solution {
    public int[] twoSum(int[] nums, int target) {
        HashMap<Integer, Integer> n_map = new HashMap<>();
        for (int i = 0; i < nums.length; i++) {
            int num = nums[i];
            int diff = target - num; //
            if (n_map.containsKey(diff)) {
                return new int[]{i, n_map.get(diff)};
            }
            n_map.put(num, i);
        }

        return new int[]{};
    }
}