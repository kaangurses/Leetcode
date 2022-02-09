final class Solution {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted(by: { $0 < $1 })
        var resultNums = [Int]()
        for idx in 0..<nums.count-1 {
            var jdx = idx+1
            var diff = nums[jdx]-nums[idx]
            while jdx<nums.count {
                diff = nums[jdx]-nums[idx]
                if diff == k && !resultNums.contains(nums[idx]) {
                    resultNums.append(nums[idx])
                } else if diff > k {
                    break
                }
                jdx += 1
            }
        }

        return resultNums.count
    }
}


Solution().findPairs([1,2,3,4,5], 1) // 4
Solution().findPairs([3,1,4,1,5], 2) // 2
