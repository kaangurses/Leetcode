// 1672. Richest Customer Wealth

final class Solution1672 {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var richest = 0
        for account in accounts {
            var current = 0
            for bank in account {
                current += bank
            }
            if richest < current {
                richest = current
            }
        }
        return richest
    }
}
