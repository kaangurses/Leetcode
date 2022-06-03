// 190. Reverse Bits

final class Solution190 {
    func reverseBits(_ n: Int) -> Int {
        var binary = String(n, radix: 2)
        if binary.count < 32 {
            binary = String(repeating: "0", count: 32 - binary.count) + binary
        }
        return Int(String(binary.reversed()), radix: 2) ?? -1

    }
}
