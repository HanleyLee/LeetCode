/**
 # 链表中倒数第 k 个节点

 输入一个链表，输出该链表中倒数第k个节点。为了符合大多数人的习惯，本题从1开始计数，即链表的尾节点是倒数第1个节点。例如，一个链表有6个节点，从头节点开始，它们的值依次是1、2、3、4、5、6。这个链表的倒数第3个节点是值为4的节点。

 ## 示例

 ```
 给定一个链表: 1->2->3->4->5, 和 k = 2.
 返回链表 4->5.
 ```

 ## Official Link

 <https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/>

 ---
 */

import Foundation

class Solution {
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil else { return nil }

        var currentNode = head
        var resNode = head
        var i: Int = 0
        while currentNode != nil {
            currentNode = currentNode?.next
            i += 1
        }

        for _ in 0 ..< i - k {
            resNode = resNode?.next
        }

        return resNode
    }
}


var listNode1 = ListNode(1)
var listNode2 = ListNode(2)
var listNode3 = ListNode(3)
var listNode4 = ListNode(4)
var listNode5 = ListNode(5)

listNode1.next = listNode2
listNode2.next = listNode3
listNode3.next = listNode4
listNode4.next = listNode5

let res = Solution().getKthFromEnd(listNode1, 2)
print(res?.val)
