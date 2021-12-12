// 1816. Truncate Sentence

import Foundation

final class Solution1816 {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var stringToArray = s.components(separatedBy: " ")
        stringToArray.removeLast(stringToArray.count-k)
        return stringToArray.joined(separator: " ")
    }
}
