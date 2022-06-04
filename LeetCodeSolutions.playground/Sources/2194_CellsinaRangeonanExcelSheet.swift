// 2194. Cells in a Range on an Excel Sheet

final class Solution2194 {
    func cellsInRange(_ s: String) -> [String] {
        let char = Array(s)
        let charStart: Int = Int(char[0].asciiValue ?? 0)
        let charEnd: Int = Int(char[3].asciiValue ?? 0)
        let numberStart: Int = Int(String(char[1])) ?? 0
        let numberEnd: Int = Int(String(char[4])) ?? 0
        var result = [String]()
        for char in charStart...charEnd {
            for num in numberStart...numberEnd {
                result.append(String(UnicodeScalar(UInt8(char))) + "\(num)")
            }
        }
        return result
    }
}
