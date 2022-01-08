// 2114. Maximum Number of Words Found in Sentences

final class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var most = 0
        for sentence in sentences {
            most = max(most, sentence.components(separatedBy: " ").count)
        }
        return most
    }
}
