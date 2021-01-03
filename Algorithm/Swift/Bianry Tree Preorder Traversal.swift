/*:
 # 前序遍历

 Disscussion

 ## 示例

 ```
 给定二叉树: [3,9,20,null,null,15,7],

 3
 / \
 9  20
 /  \
 15   7
 ```

 ## 提示
 
 ## 限制

 ## Official Link

 <https://leetcode-cn.com/problems/reverse-integer>

 ---
 */

import Foundation

// 递归解法
class Solution {
    func preOrder(root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }

        var res = [Int]()

        res.append(root.val)
        res += preOrder(root: root.left)
        res += preOrder(root: root.right)

        return res

    }
}


// 迭代解法
class Solution1 {
    func preOrder(root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }

        var res = [Int]()
        var stack = [root]

        while let node = stack.popLast() {
            res.append(node.val)
            if let right = node.right { stack.append(right) }
            if let left = node.left { stack.append(left) }
        }

        return res
    }
}

let root = TreeNode(3)
let node9 = TreeNode(9)
let node20 = TreeNode(20)
let node15 = TreeNode(15)
let node7 = TreeNode(7)

root.left = node9
root.right = node20
node20.left = node15
node20.right = node7

Solution().preOrder(root: root)


