// 2057. Smallest Index With Equal Value

final class Solution2057 {
    func smallestEqual(_ nums: [Int]) -> Int {
        for idx in 0..<nums.count where idx%10 == nums[idx] {
            return idx
        }
        return -1
    }
}
