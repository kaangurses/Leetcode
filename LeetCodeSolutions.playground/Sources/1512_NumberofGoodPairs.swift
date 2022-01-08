// 1512. Number of Good Pairs
final class Solution1512 {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var result = 0
        for idx in 0..<nums.count-1 {
            for jdx in idx+1..<nums.count {
                if nums[idx] == nums[jdx] {
                    result += 1
                }
            }
        }
        return result
    }
}
