// 217. Contains Duplicate

final class Solution217 {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        Set<Int>(nums).count != nums.count
    }
}
