// 1470. Shuffle the Array

final class Solution1470 {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = [Int]()
        for idx in 0..<n {
            result.append(nums[idx])
            result.append(nums[idx+n])
        }
        return result
    }
}
