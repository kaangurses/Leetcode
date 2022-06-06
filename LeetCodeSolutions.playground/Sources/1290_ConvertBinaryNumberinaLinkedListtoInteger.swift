// 1290. Convert Binary Number in a Linked List to Integer

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
final class Solution1290 {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var binary = ""
        var head = head
        while head != nil {
            binary += "\(head!.val)"
            head = head!.next
        }
        return Int(binary, radix: 2) ?? 0
    }
}
