// 13. Roman to Integer

final class Solution13 {
    func romanToInt(_ s: String) -> Int {
        var total = 0
        var previousItem = ""
        for item in s {
            switch item {
            case "I":
                total += 1
            case "V":
                if previousItem == "I" {
                    total += 3
                } else {
                    total += 5
                }
            case "X":
                if previousItem == "I" {
                    total += 8
                } else {
                    total += 10
                }
            case "L":
                if previousItem == "X" {
                    total += 30
                } else {
                    total += 50
                }
            case "C":
                if previousItem == "X" {
                    total += 80
                } else {
                    total += 100
                }
            case "D":
                if previousItem == "C" {
                    total += 300
                } else {
                    total += 500
                }
            case "M":
                if previousItem == "C" {
                    total += 800
                } else {
                    total += 1000
                }
            default:
                continue
            }
            previousItem = String(item)
        }
        return total
    }
}
