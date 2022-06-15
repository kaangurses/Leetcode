// 1048. Longest String Chain

final class Solution1048 {
    func longestStrChain(_ words: [String]) -> Int {
        let words = words.sorted(by: { $0.count < $1.count })
        var dict: [String: Int] = [:]
        var longest = 1
        for word in words {
            var currentLength = 1
            for i in 0 ..< word.count {
                var newStr = Array(word)
                newStr.remove(at: i)
                let previousLength = dict[String(newStr), default: 0] + 1
                currentLength = max(previousLength, currentLength)
            }
            dict[word] = currentLength
            longest = max(longest, currentLength)
        }
        return longest
    }
}
