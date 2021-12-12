// 1773. Count Items Matching a Rule

final class Solution1773 {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        let ruleIdx = ruleKey == "type" ? 0 : (ruleKey == "color" ? 1 : 2)
        return items.reduce(0) { $0 + ($1[ruleIdx] == ruleValue ? 1 : 0)}
    }
}
