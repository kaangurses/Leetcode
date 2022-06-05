// 2293. Min Max Game

final class Solution2293 {
    func minMaxGame(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        let count = nums.count/2
        var newNums: [Int] = Array(repeating: 0, count: count)
        for idx in 0..<count {
            let multiplied = 2*idx
            if idx%2 == 0 {
                newNums[idx] = min(nums[multiplied], nums[multiplied+1])
            } else {
                newNums[idx] = max(nums[multiplied], nums[multiplied+1])
            }
        }
        return minMaxGame(newNums)
    }
}
