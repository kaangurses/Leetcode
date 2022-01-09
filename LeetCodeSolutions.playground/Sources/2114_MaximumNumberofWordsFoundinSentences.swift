// 2114. Maximum Number of Words Found in Sentences
import Foundation

final class Solution2114 {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var most = 0
        for sentence in sentences {
            most = max(most, sentence.components(separatedBy: " ").count)
        }
        return most
    }
}
