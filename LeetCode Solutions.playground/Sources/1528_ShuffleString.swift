// 1528. Shuffle String

final class Solution1528 {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var res = Array<Character>(repeating: "a", count: indices.count)
        for i in 0..<indices.count {
            res[indices[i]] = Array(s)[i]
        }
        return String(res)
    }
}
