// 1389. Create Target Array in the Given Order

final class Solution1389 {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var target = [Int]()
        for idx in 0..<nums.count {
            target.insert(nums[idx], at: index[idx])
        }
        return target
    }
}
