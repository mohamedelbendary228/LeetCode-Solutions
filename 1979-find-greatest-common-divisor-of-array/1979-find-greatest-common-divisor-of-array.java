class Solution {
    public int findGCD(int[] nums) {
        int smallest = nums[0];
        int largest = nums[0];
        int gdc = 0;

        for (int i = 0; i < nums.length; i++) {
            if (nums[i] < smallest) {
                smallest = nums[i];
            }
            if (nums[i] > largest) {
                largest = nums[i] ;
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