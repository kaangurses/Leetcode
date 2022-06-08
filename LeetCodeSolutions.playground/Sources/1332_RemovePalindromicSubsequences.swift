// 1332. Remove Palindromic Subsequences

final class Solution1332 {
    func removePalindromeSub(_ s: String) -> Int {
        s == String(Array(s).reversed()) ? 1 : 2
    }
}
