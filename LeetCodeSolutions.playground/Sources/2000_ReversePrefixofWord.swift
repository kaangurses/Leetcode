// 2000. Reverse Prefix of Word

final class Solution2000 {
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        var result = [Character]()
        var isReversed = false
        
        for char in word {
            result.append(char)
            if !isReversed, char == ch {
                result.reverse()
                isReversed = true
            }
        }
        return String(result)
    }
}
