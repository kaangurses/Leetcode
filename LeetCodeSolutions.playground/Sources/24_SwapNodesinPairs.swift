// 24. Swap Nodes in Pairs

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

final class Solution24 {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var currentNode = head
        var adjNode = head?.next
        while currentNode != nil && adjNode != nil {
            if let currentNode = currentNode,
               let adjNode = adjNode {
                (currentNode.val, adjNode.val) = (adjNode.val, currentNode.val)
            }

            currentNode = currentNode?.next?.next
            adjNode = adjNode?.next?.next
        }

        return head
    }
}
