class Solution {
    public boolean isPalindrome(int x) {
        int reverse = 0;
        int original = x;
        while (original != 0) {
            int lastDigit = original % 10;
            reverse *= 10;
            reverse += lastDigit;
            original /= 10;
        }

        if(x < 0) {
            return false;
        } else {
            return reverse == x;
        }
    }
}