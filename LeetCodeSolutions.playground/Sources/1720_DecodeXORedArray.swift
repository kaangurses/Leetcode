// 1720. Decode XORed Array

final class Solution1720 {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var decoded = [first]

        for idx in 0..<encoded.count {
            let decode = (decoded.last ?? first) ^ encoded[idx]
            decoded.append(decode)
        }

        return decoded
    }
}
