// 198. House Robber

final class Solution {
    func rob(_ nums: [Int]) -> Int {
        var head = 0
        var previous = 0

        for num in nums {
            let temp = max(head+num, previous)
            head = previous
            previous = temp
        }

        return previous
    }
}
