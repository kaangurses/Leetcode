// 35. Search Insert Position

final class Solution35 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var lowerBound = 0
        var upperBound = nums.count-1
        while lowerBound <= upperBound {
            let mid = lowerBound + (upperBound-lowerBound)/2
            if nums[mid] < target {
                lowerBound = mid + 1
            } else if nums[mid] > target {
                upperBound = mid - 1
            } else {
                return mid
            }
        }
        return lowerBound
    }
}
