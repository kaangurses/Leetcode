// 278. First Bad Version

/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}


final class Solution278 : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var lowerBound = 0
        var upperBound = n
        while lowerBound <= upperBound {
            let pivot = lowerBound + (upperBound-lowerBound)/2
            if isBadVersion(pivot) {
                upperBound = pivot - 1
            } else {
                lowerBound = pivot + 1
            }
        }
        return lowerBound
    }
}
 */
