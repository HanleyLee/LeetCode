/*:
 # 对称的二叉树

 例如，二叉树 [1,2,2,3,4,4,3] 是对称的。

 ```
         1
        / \
       2   2
      / \ / \
     3  4 4  3
 ```

 但是下面这个 [1,2,2,null,3,null,3] 则不是镜像对称的:

 ```
         1
        / \
       2   2
        \   \
         3    3

 ```

 ## 示例

 ```
 输入：root = [1,2,2,3,4,4,3]
 输出：true
 ```

 ```
 输入：root = [1,2,2,null,3,null,3]
 输出：false
 ```

 ## 限制

 `0 <= 节点个数 <= 1000`

 ## Official Link

<https://leetcode-cn.com/problems/dui-cheng-de-er-cha-shu-lcof/submissions/>

 ---
 */

import Foundation

/**
 递归法

 思路如下:

 1. 本节点为 nil, 返回 true
 2. 左侧节点为 nil, 说明左节点为空, 此时判断右节点是否为空即可
 3. 到了这一步, 说明左右都不为空, 那么判断是否值相等, 不相等直接返回 false
 4. 到了这一步, 说明从顶点 node 至此都是对称的, 此时将
    1. `left` 的 `left` 与 `right` 的 `right` 比较
    2. `left` 的 `right` 与 `right` 的 `left` 比较

    返回以上两个结果的 `与` 结果
 */

class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard root != nil else { return true }
        return compare(left: root?.left, right: root?.right)
    }

    func compare(left: TreeNode?, right: TreeNode?) -> Bool {
        if left == nil {
            return right == nil
        }

        if left?.val != right?.val {
            return false
        }

        return compare(left: left?.left, right: right?.right) && compare(left: left?.right, right: right?.left)
    }
}


// 迭代法
class Solution1 {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if (root == nil) {return true}
        var q = [TreeNode?]()
        q.append(root?.left)
        q.append(root?.right)

        while !q.isEmpty {
            let t1 = q.popLast()!
            let t2 = q.popLast()!
            //记得添加这个判断、、、不然变成死循环了
            if (t1 == nil && t2 == nil) {
                continue
            }
            if (t1?.val != t2?.val) {
                return false
            }
            q.append(t1?.left)
            q.append(t2?.right)
            q.append(t1?.right)
            q.append(t2?.left)
        }
        return true
    }
}
