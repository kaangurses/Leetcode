// 46. Permutations

final class Solution46 {
    func permute(_ nums: [Int]) -> [[Int]] {
        var subList: [Int] = []
        var result: [[Int]] = []
        backtracking(nums, &subList, &result)
        return result
    }

    private func backtracking(_ nums: [Int], _ array: inout [Int], _ result: inout [[Int]]) {
        if array.count == nums.count {
            result.append(array)
            return
        }

        for idx in 0..<nums.count {
            if !array.contains(nums[idx]) {
                array.append(nums[idx])
                backtracking(nums, &array, &result)
                array.removeLast()
            }
        }
    }
}
