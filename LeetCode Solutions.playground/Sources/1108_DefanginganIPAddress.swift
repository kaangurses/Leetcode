// 1108. Defanging an IP Address
import Foundation

final class Solution1108 {
    func defangIPaddr(_ address: String) -> String {
        let stringToArray = address.components(separatedBy: ".")
        return stringToArray.joined(separator: "[.]")
    }
}
