// 258. Add Digits

final class Solution258 {
    func addDigits(_ num: Int) -> Int {
        var sum = 10
        var temp = num
        while sum > 9 {
            sum = 0
            while temp > 0 {
                let digit = temp%10
                sum += digit
                temp = temp/10
            }
            temp = sum
        }
        return sum
    }
}

/*
 final class Solution {
     func addDigits(_ num: Int) -> Int {
         num < 10 ? num : (num % 9 == 0 ? 9 : num % 9)
     }
 }
 */
