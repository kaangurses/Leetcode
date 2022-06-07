// 88. Merge Sorted Array

final class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard n != 0 else { return }
        guard m != 0 else {
            nums1 = nums2
            return
        }

        var firstIdx = m-1
        var secondIdx = n-1
        var pointer = nums1.count-1
        while secondIdx >= 0 {
            let num2 = nums2[secondIdx]
            let num1 = firstIdx>=0 ? nums1[firstIdx] : num2
            if num2 >= num1 {
                nums1[pointer] = num2
                secondIdx -= 1
            } else {
                nums1[pointer] = num1
                firstIdx -=  1
            }
            pointer -= 1
        }
    }
}



/*
final class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard !nums2.isEmpty else { return }

        for idx in m..<nums1.count {
            nums1[idx] = nums2[idx-m]
        }
        nums1.sort(by:<)
    }
}
*/
