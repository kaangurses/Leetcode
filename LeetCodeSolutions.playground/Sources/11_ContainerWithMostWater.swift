// 11. Container With Most Water

final class Solution11 {
    func maxArea(_ height: [Int]) -> Int {
        var leftIdx = 0
        var rightIdx = height.count-1
        var maxArea = 0
        while leftIdx<rightIdx {
            let area = min(height[leftIdx], height[rightIdx]) * (rightIdx-leftIdx)
            maxArea = max(maxArea, area)
            if height[leftIdx] < height[rightIdx] {
                leftIdx += 1
            } else {
                rightIdx -= 1
            }
        }
        
        return maxArea
    }
}
