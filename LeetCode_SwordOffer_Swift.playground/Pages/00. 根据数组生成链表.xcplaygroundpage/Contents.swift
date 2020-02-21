/*:
 # 根据给定数组生成链表

 根据给定的数组生成链表, 链表顺序与数组顺序相同

 ## Example

 ```
 输入: [1, 3, 5, 6]
 输出: 1->3->5->6
 ```
 */
import Foundation

var str = "Hello, playground"

class Solution {
    func convertArrayToLinkedList(_ arr: [Int]) -> ListNode? {
        guard arr.count > 0 else { return nil }
        let node: ListNode? = ListNode(arr.first!)
        var temp = node

        for i in arr {
            temp?.next = ListNode(i)
            temp = temp?.next
        }

        return node?.next
    }
}

let arr = [1, 3, 5, 6]

let object = Solution().convertArrayToLinkedList(arr)

object?.val
object?.next?.val
object?.next?.next?.val
object?.next?.next?.next?.val
object?.next?.next?.next?.next?.val


