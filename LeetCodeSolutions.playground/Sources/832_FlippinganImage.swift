// 832. Flipping an Image

final class Solution832 {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        var result = image
        for idx in 0..<image.count {
            for jdx in 0..<image[idx].count {
                result[idx][jdx] ^= 1
            }
        }
        for idx in 0..<result.count {
            result[idx] = result[idx].reversed()
        }

        return result
    }
}
