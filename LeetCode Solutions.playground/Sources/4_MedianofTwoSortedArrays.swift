// 4. Median of Two Sorted Arrays

final class Solution4 {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let sorted = (nums1+nums2).sorted()
        let half = sorted.count/2
        if sorted.count%2==0 && half != 0 {
            return Double(sorted[half-1]+sorted[half])/2
        } else {
            return Double(sorted[half])
        }
    }
}
