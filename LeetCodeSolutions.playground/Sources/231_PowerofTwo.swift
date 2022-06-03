// 231. Power of Two

final class Solution231 {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n<0 { return false }
        let binary = String(n, radix: 2)
        var result = 0
        for bit in binary {
            if bit == "1" {
                result += 1
                if result > 1 {
                    return false
                }
            }
        }
        return result == 1
    }
}
