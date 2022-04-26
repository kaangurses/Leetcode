// 283. Move Zeroes

final class Solution283 {
    func moveZeroes(_ nums: inout [Int]) {
        var left = 0
        var right = 1
        while right<nums.count {
            if nums[left] == 0 {
                if nums[right] == 0 {
                    right += 1
                } else {
                    nums.swapAt(left, right)
                    left += 1
                    right = left+1
                }
            } else {
                left += 1
                right = left+1
            }
        }
    }
}
