// 58. Length of Last Word

final class Solution58 {
    func lengthOfLastWord(_ s: String) -> Int {
        var count = 0
        for item in s.reversed() {
            if item != " " {
                count += 1
            } else if count > 0 {
                break
            }
        }
        return count    }
}
