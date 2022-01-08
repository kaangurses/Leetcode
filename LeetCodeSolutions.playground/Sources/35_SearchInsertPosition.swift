final class Solution35 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var result = 0
        for num in nums {
            if num >= target {
                return result
            }
            result += 1
        }
        return result
    }
}
