// 1431 Kids With the Greatest Number of Candies

final class Solution1431 {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let requiredCount = (candies.max() ?? 0) - extraCandies

        var result = [Bool]()
        for candy in candies {
            result.append(candy>=requiredCount)
        }
        return result
    }
}
