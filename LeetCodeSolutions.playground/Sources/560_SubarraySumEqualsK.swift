// 560. Subarray Sum Equals K
// TODO: Optimize it.

final class Solution560 {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        if nums.isEmpty {
            return 0
        }
        var total = 0
        var idx = 0

        while idx < nums.count {
            var jdx = idx + 1
            var temp = nums[idx]
            if temp == k {
                total += 1
            }
            while jdx < nums.count {
                temp += nums[jdx]
                if temp == k {
                    total += 1
                }
                jdx += 1
            }
            idx += 1
        }
        return total
    }
}
