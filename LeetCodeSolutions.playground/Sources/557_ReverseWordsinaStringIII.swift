// 557. Reverse Words in a String III

final class Solution557 {
    func reverseWords(_ s: String) -> String {
        s.split(separator: " ").map { String($0.reversed()) }.joined(separator: " ")
    }
}
