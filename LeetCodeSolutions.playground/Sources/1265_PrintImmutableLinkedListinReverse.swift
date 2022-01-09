// 1265. Print Immutable Linked List in Reverse

public class ImmutableListNode {
    public func printValue() {}
    public func getNext() -> ImmutableListNode? { return nil }
}

final class Solution1265 {
    func printLinkedListInReverse(_ head: ImmutableListNode?) {
        if let next = head?.getNext() {
            printLinkedListInReverse(next)
        }
        head?.printValue()
    }
}
