// 92. Reverse Linked List II

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
final class Solution92 {
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        if left == right { return head }
        var head = head
        var array = [Int]()
        var counter = 1
        var currentNode = head
        var previousNode: ListNode?
        while counter <= right && currentNode != nil {
            if counter >= left {
                array.append(currentNode?.val ?? 0)
            }
            counter += 1
            if counter == left {
                previousNode = currentNode
            }
            currentNode = currentNode?.next
        }

        array = array.reversed()

        for val in array {
            let node = ListNode(val)
            if previousNode == nil {
                head = node
            } else {
                previousNode?.next = node
            }
            previousNode = node

        }
        previousNode?.next = currentNode

        return head
    }
}
