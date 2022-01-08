// 12. Integer to Roman

final class Solution12 {
    func intToRoman(_ num: Int) -> String {
        var temp = num
        var result = ""
        while temp != 0 {
            if temp / 1000 > 0 {
                let count = temp / 1000
                temp -= (count * 1000)
                result = result + String(repeating: "M", count: count)
            } else if temp / 900 > 0 {
                temp -= 900
                result = result + "CM"
            } else if temp / 500 > 0 {
                temp -= 500
                result = result + "D"
            } else if temp / 400 > 0 {
                temp -= 400
                result = result + "CD"
            } else if temp / 100 > 0 {
                let count = temp / 100
                temp -= (count * 100)
                result = result + String(repeating: "C", count: count)
            } else if temp / 90 > 0 {
                temp -= 90
                result = result + "XC"
            } else if temp / 50 > 0 {
                temp -= 50
                result = result + "L"
            } else if temp / 40 > 0 {
                temp -= 40
                result = result + "XL"
            } else if temp / 10 > 0 {
                let count = temp / 10
                temp -= (count * 10)
                result = result + String(repeating: "X", count: count)
            } else if temp / 9 > 0 {
                temp -= 9
                result = result + "IX"
            } else if temp / 5 > 0 {
                temp -= 5
                result = result + "V"
            } else if temp / 4 > 0 {
                temp -= 4
                result = result + "IV"
            } else {
                result = result + String(repeating: "I", count: temp)
                temp = 0
            }
        }
        
        return result
    }
}
