final class Solution1913 {
    func maxProductDifference(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted(by: { $0 < $1 })
        return (sortedNums[sortedNums.count-1] * sortedNums[sortedNums.count-2]) - (sortedNums[0] * sortedNums[1])
    }
}
