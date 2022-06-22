// 215. Kth Largest Element in an Array

final class Solution215 {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        nums.sorted(by:>)[k-1]
    }
}
