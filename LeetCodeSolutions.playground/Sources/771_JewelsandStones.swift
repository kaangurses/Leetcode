// 771. Jewels and Stones

final class Solution771 {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        for stone in stones {
            if jewels.contains(stone) {
                result += 1
            }
        }
        return result
    }
}
