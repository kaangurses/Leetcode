// 191. Number of 1 Bits

final class Solution191 {
    func hammingWeight(_ n: Int) -> Int {
        let binary = String(n, radix: 2)
        var result = 0
        binary.forEach { bit in
            if bit == "1" {
                result += 1
            }
        }
        return result
    }
}
