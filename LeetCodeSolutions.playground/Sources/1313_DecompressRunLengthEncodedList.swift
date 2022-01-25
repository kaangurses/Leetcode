// 1313. Decompress Run-Length Encoded List

final class Solution1313 {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        for idx in 0..<nums.count/2 {
            let freq = nums[2*idx]
            let val = nums[2*idx+1]

            for _ in 0..<freq {
                result.append(val)
            }
        }
        return result
    }
}
