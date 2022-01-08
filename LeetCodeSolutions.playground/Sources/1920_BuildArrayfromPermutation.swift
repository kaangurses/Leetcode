// 1920. Build Array from Permutation

final class Solution1920 {
    func buildArray(_ nums: [Int]) -> [Int] {
        var ans = [Int]()
        for idx in 0..<nums.count {
            ans.append(nums[nums[idx]])
        }
        return ans
    }
}
