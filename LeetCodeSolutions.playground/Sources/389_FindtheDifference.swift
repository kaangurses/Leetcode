// 389. Find the Difference

final class Solution389 {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var sElemHash = [Character: Int]()
        for sElem in s {
            sElemHash[sElem] = (sElemHash[sElem] ?? 0) + 1
        }

        var tElemHash = [Character: Int]()
        for tElem in t {
            tElemHash[tElem] = (tElemHash[tElem] ?? 0) + 1
        }

        for (key, value) in tElemHash {
            if sElemHash[key] == nil {
                return key
            } else if sElemHash[key] != value {
                return key
            }
        }

        return Character(" ")
    }
}
