// 605. Can Place Flowers

final class Solution605 {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        guard n>0 else { return true }
        guard flowerbed.contains(0) else { return false }

        var isPreviousZero = flowerbed.first == 0
        var plantibleCount = 0
        for idx in 0..<flowerbed.count {
            if flowerbed[idx] == 0 {
                if isPreviousZero && ((idx+1<flowerbed.count && flowerbed[idx+1] == 0) || idx+1==flowerbed.count) {
                    plantibleCount += 1
                    isPreviousZero = false
                } else {
                    isPreviousZero = true
                }
            } else {
                isPreviousZero = false
            }
        }

        return plantibleCount>=n
    }
}
