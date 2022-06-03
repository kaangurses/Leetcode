// 70. Climbing Stairs

final class Solution70 {
    func climbStairs(_ n: Int) -> Int {
        if n == 1 {
            return 1
        } else if n == 2 {
            return 2
        }
        var first = 1
        var second = 2
        var result = 0

        for _ in 2..<n {
            result = first + second
            first = second
            second = result
        }
        return result
    }
}
