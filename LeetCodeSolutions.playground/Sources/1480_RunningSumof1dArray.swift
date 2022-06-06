// 1480. Running Sum of 1d Array

final class Solution1480 {
    func runningSum(_ nums: [Int]) -> [Int] {
        var nums = nums
        for idx in 1..<nums.count {
            nums[idx] = nums[idx] + nums[idx-1]
        }
        return nums
    }
}
