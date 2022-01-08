// 1832. Check if the Sentence Is Pangram

final class Solution1832 {
    private let alphabet = "abcdefghijklmnopqrstuvwxyz"
    func checkIfPangram(_ sentence: String) -> Bool {
        for letter in alphabet {
            if !sentence.contains(letter) {
                return false
            }
        }
        return true
    }
}

/*
final class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        Set(sentence).count == 26
    }
}
*/
