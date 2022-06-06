// 2160. Minimum Sum of Four Digit Number After Splitting Digits

final class Solution2160 {
    func minimumSum(_ num: Int) -> Int {
        var num = num
        var numbers = Array(repeating: 0, count: 4)
        for idx in 0..<4 {
            numbers[idx] = num%10
            num /= 10
        }
        numbers.sort(by:<)
        return (numbers[0] + numbers[1])*10 + numbers[2] + numbers[3]
    }
}
