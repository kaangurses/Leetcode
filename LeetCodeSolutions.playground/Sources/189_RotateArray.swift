// 189. Rotate Array

final class Solution189 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if nums.isEmpty { return }
        let lastIdx = nums.count-1
        for _ in 0..<k {
            nums.insert(nums.remove(at: lastIdx), at: 0)
        }
    }
}
