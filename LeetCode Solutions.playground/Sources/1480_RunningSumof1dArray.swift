// 1480. Running Sum of 1d Array

final class Solution1480 {
    func runningSum(_ nums: [Int]) -> [Int] {
        var arr: [Int] = [nums[0]]
        for idx in 0..<nums.count-1 {
            arr.append(arr[idx]+nums[idx+1])
        }
        return arr
    }
}
