// 1688. Count of Matches in Tournament

final class Solution1688 {
    func numberOfMatches(_ n: Int) -> Int {
        if n == 1 {
            return 0
        }
        let matches = n/2
        if n%2 == 1 {
            return matches + numberOfMatches(matches+1)
        } else {
            return matches + numberOfMatches(matches)
        }
    }
}
