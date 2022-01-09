// 7. Reverse Integer

final class Solution7 {
    func reverse(_ x: Int) -> Int {
        var comingInt = x
        var reversedInt = 0
        while comingInt != 0 {
            reversedInt = reversedInt * 10 + comingInt % 10
            comingInt = comingInt / 10
        }
        
        return reversedInt < Int32.min || reversedInt > Int32.max ? 0 : reversedInt
    }
}
