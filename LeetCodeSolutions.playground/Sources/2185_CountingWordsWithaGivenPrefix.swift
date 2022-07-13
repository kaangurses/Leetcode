// 2185. Counting Words With a Given Prefix

final class Solution2185 {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        words.reduce(into: 0) { $0 += $1.hasPrefix(pref) ? 1 : 0 }
    }
}
