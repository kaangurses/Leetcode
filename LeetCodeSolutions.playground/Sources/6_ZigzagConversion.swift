// 6. Zigzag Conversion

final class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows > 1 else { return s }
        
        var rows = [String](repeating: "", count: numRows)
        let modulo = 2*numRows-2
        
        for idx in 0..<s.count {
            var appendIdx = idx%modulo
            if appendIdx>=numRows {
                appendIdx = modulo-appendIdx
            }
            rows[appendIdx].append(s[idx])
        }
        
        return rows.joined()
    }
}

/*
extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}
*/
