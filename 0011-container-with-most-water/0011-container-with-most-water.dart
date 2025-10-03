class Solution {
  int maxArea(List<int> height) {
    int maxArea = 0;
    int left = 0;
    int right = height.length - 1;

    while (left < right) {
        int area = (right - left) * (min(height[left], height[right]));
        maxArea = max(area, maxArea);
        if (height[left] < height[right]) {
            left++;
        } else {
            right--;
        }
    }
    return maxArea;
  }
}