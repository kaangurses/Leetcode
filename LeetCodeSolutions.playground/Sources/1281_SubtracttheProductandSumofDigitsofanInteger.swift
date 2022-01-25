// 1281. Subtract the Product and Sum of Digits of an Integer

final class Solution1281 {
    func subtractProductAndSum(_ n: Int) -> Int {
        var product = 1
        var sum = 0
        var temp = n
        while temp > 0 {
            let digit = temp%10
            product *= digit
            sum += digit
            temp = temp/10
        }
        return product-sum
    }
}
