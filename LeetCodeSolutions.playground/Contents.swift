final class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else { return [] }
        var result = [[Int]]()
        let sortedNums = nums.sorted(by: { $0 < $1 })
        for idx in 0..<sortedNums.count-2 {
            var left = idx+1
            var right = sortedNums.count-1
            let selected = sortedNums[idx]
            while left < right {
                if 0 < sortedNums[left]+sortedNums[right]+selected {
                    right -= 1
                } else if 0 > sortedNums[left]+sortedNums[right]+selected {
                    left += 1
                } else {
                    if !result.contains([selected, sortedNums[left], sortedNums[right]]) {
                        result.append([selected, sortedNums[left], sortedNums[right]])
                    }
                    left += 1
                }
            }
        }

        return result
    }
}
Solution().threeSum([-2,0,1,1,2])
Solution().threeSum([0,0,0,0])
Solution().threeSum([-1,0,1,2,-1,-4])
