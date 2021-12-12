// 9. Palindrome Number

final class Solution9 {
    func isPalindrome(_ x: Int) -> Bool {
        let str = "\(x)"
        var isPalindrome = true
        for idx in 0..<str.count/2 {
            if str[idx] != str[str.count-1-idx] {
                isPalindrome = false
                break
            }
        }
        return isPalindrome
    }
}

extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}
