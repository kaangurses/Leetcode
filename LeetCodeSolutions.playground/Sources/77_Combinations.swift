// 77. Combinations

final class Solution77 {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var nums: [Int] = []
        for idx in 1...n {
            nums.append(idx)
        }
        var subList: [Int] = []
        var result: [[Int]] = []
        backtracking(nums, &subList, &result, k, 0)
        return result
    }

    private func backtracking(_ nums: [Int], _ array: inout [Int], _ result: inout [[Int]], _ k: Int, _ start: Int) {
        if array.count == k {
            result.append(array)
            return
        }

        for idx in start..<nums.count {
            if !array.contains(nums[idx]) {
                array.append(nums[idx])
                backtracking(nums, &array, &result, k, idx+1)
                array.removeLast()
            }
        }
    }
}
