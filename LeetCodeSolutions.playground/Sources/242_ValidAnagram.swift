// 242. Valid Anagram

final class Solution242 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        Array(s).sorted(by: >) == Array(t).sorted(by: >)
    }
}
/*
final class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var sArray = Array(s)
        let tArray = Array(t)

        for char in tArray {
            if let idx = sArray.firstIndex(of: char) {
                sArray.remove(at: idx)
            } else {
                return false
            }
        }

        return true
    }
}
*/
