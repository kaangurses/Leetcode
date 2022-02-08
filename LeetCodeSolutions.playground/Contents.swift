class Solution {
    func addDigits(_ num: Int) -> Int {
        return num < 10 ? num : (num % 9 == 0 ? 9 : num % 9)
    }
}

Solution().addDigits(38)
