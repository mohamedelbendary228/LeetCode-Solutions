class Solution {
    public int findGCD(int[] nums) {
        int smallest = nums[0];
        int largest = nums[0];
        int gdc = 0;

        for (int num : nums) {
            if (num < smallest) {
                smallest = num;
            }
            if (num > largest) {
                largest = num;
            }
        }
        for (int i = 1; i <= smallest; i++) {
            if(smallest % i == 0 && largest % i == 0) {
                gdc = i;
            }
        }
        return gdc;
    }
}