// 1486. XOR Operation in an Array

final class Solution1486 {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var array = Array(repeating: 0, count: n)
        for idx in 0..<n {
            array[idx] = start + 2*idx
        }

        return array.reduce(0,^)
    }
}
