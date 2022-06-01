// 567. Permutation in String

final class Solution567 {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count <= s2.count else { return false }
        let aAscii = "a".first?.asciiValue ?? 0
        let s1Char = Array(s1).map { Int(($0.asciiValue ?? 0) - aAscii) }
        let s2Char = Array(s2).map { Int(($0.asciiValue ?? 0) - aAscii) }
        var fullChar = Array(repeating: 0, count: 26)

        for idx in 0..<s1Char.count {
            fullChar[s1Char[idx]] += 1
            fullChar[s2Char[idx]] -= 1
        }

        if checkMatching(fullChar) {
            return true
        }

        for idx in s1Char.count..<s2Char.count {
            fullChar[s2Char[idx-s1Char.count]] += 1
            fullChar[s2Char[idx]] -= 1
            if checkMatching(fullChar) {
                return true
            }
        }

        return false
    }

    private func checkMatching(_ array: [Int]) -> Bool {
        !array.contains { $0 != 0 }
    }
}
