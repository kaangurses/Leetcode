// 167. Two Sum II - Input Array Is Sorted

final class Solution167 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for idx in 0..<numbers.count {
            let val = numbers[idx]
            let diff = target-val
            if let diffIdx = dict[diff] {
                return [diffIdx+1, idx+1]
            }
            dict[val] = idx
        }
        return [-1, -1]
    }
}
