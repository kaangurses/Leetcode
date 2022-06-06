// 867. Transpose Matrix

final class Solution867 {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var transpose = [[Int]](repeating: [Int](repeating: 0, count: matrix.count), count: matrix[0].count)
        for idx in 0..<matrix.count {
            for jdx in 0..<matrix[0].count {
                transpose[jdx][idx] = matrix[idx][jdx]
            }
        }

        return transpose
    }
}
