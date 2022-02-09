// 532. K-diff Pairs in an Array

final class Solution532 {
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
