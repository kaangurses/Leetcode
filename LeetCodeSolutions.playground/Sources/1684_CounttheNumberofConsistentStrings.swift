// 1684. Count the Number of Consistent Strings

final class Solution1684 {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var count = 0
        for word in words {
            var wordArray = Array(word)
            wordArray.removeAll { char in
                allowed.contains(char)
            }
            if wordArray.isEmpty {
                count += 1
            }

        }
        return count
    }
}
