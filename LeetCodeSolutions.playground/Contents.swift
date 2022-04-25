final class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: nums.count)
        var left = 0
        var right = nums.count-1

        for i in 0..<nums.count {
            let currentLeft = nums[left]*nums[left]
            let currentRight = nums[right]*nums[right]
            let idx = nums.count-(i+1)
            if currentLeft > currentRight {
                result[idx] = currentLeft
                left += 1
            } else {
                result[idx] = currentRight
                right -= 1
            }
        }

        return result
    }
}

Solution().sortedSquares([-4,-1,0,3,10])
Solution().sortedSquares([-7,-3,2,3,11])
