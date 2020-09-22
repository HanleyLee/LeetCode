/*:
 # 从尾到头打印链表

 输入一个链表的头节点，从尾到头反过来返回每个节点的值（用数组返回）。

 ## 示例

 ```
 输入：head = [1,3,2]
 输出：[2,3,1]
 ```

 ## 限制

 `0 <= 链表长度 <= 10000`

 ## Official Link

 <https://leetcode-cn.com/problems/cong-wei-dao-tou-da-yin-lian-biao-lcof/>

 ---
 */

import Foundation

// 递归方法
class Solution {
    func reversePrint(_ head: ListNode?) -> [Int] {
        guard let head = head else { return [] }

        var result = reversePrint(head.next)
        result.append(head.val)
        return result
    }
}

let node1 = ListNode(1)
let node2 = ListNode(3)
let node3 = ListNode(2)
node1.next = node2
node2.next = node3


Solution().reversePrint(node1)
