// 2351. First Letter to Appear Twice

final class Solution2351 {
    func repeatedCharacter(_ s: String) -> Character {
        let array = Array(s)
        var dict: [Character: Bool] = [:]
        for char in array {
            if dict[char] == true {
                return char
            }
            dict[char] = true
        }
        return Character("")
    }
}
