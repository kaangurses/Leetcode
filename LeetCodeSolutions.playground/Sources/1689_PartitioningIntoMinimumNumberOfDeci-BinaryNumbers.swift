// 1689. Partitioning Into Minimum Number Of Deci-Binary Numbers

final class Solution1689 {
    func minPartitions(_ n: String) -> Int {
        n.reduce(into: 0) { $0 = max($0, Int(String($1)) ?? 0) }
    }
}
