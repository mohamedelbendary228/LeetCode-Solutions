class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var start: Int = 0
        var end: Int = nums.count - 1

        while start <= end {
            var mid = (start + end) / 2
            if nums[mid] == target {
                return mid
            }
            if nums[mid] < target {
                start = mid + 1
            }
            if nums[mid] > target {
                end = mid - 1
            }
        }
        return start
        }
}