// 2022. Convert 1D Array Into 2D Array

final class Solution2022 {
    func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
        guard original.count == m*n else { return [] }
        var result = [[Int]](repeating: [], count: m)
        for index in 0..<original.count {
            let idx = index/n
            result[idx].append(original[index])
        }
        return result
    }
}
