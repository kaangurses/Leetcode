// 1119. Remove Vowels from a String

final class Solution1119 {
    func removeVowels(_ s: String) -> String {
        let vowels: Set<Character> = ["a","e","i","o","u"]
        return s.filter { !vowels.contains($0) }
    }
}
