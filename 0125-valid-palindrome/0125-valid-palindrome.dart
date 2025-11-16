class Solution {
    bool isPalindrome(String string) {
    String s = string.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    int l = 0;
    int r = s.length - 1;
    while (l < r) {
        if (s[l] != s[r]) {
        return false;
        }
        l++;
        r--;
    }
    return true;
  }
}