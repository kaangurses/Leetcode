// 136. Single Number

final class Solution136 {
    func singleNumber(_ nums: [Int]) -> Int {
        nums.reduce(0,^)
    }
}
