// 1662. Check If Two String Arrays are Equivalent

final class Solution1662 {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        return word1.joined() == word2.joined()
    }
}
