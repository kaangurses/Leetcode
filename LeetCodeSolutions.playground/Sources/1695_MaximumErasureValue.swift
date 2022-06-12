// 1695. Maximum Erasure Value

final class Solution1695 {
    func maximumUniqueSubarray(_ nums: [Int]) -> Int {
        var subArray = [Int]()
        var longestTotal = 0
        for num in nums {
            if let firstIdx = subArray.firstIndex(of: num) {
                subArray.removeSubrange(0...firstIdx)
            }
            subArray.append(num)
            longestTotal = max(longestTotal, subArray.reduce(into: 0) { $0 += $1 })
        }

        return longestTotal
    }
}
