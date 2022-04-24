// 704. Binary Search

final class Solution704 {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard !nums.isEmpty else { return -1 }
        var lowerBound = 0
        var upperBound = nums.count-1
        while lowerBound <= upperBound {
            let pivot = lowerBound + (upperBound-lowerBound)/2
            if nums[pivot] > target {
                upperBound = pivot-1
            } else if nums[pivot] < target {
                lowerBound = pivot+1
            } else {
                return pivot
            }
        }
        return -1
    }
}
