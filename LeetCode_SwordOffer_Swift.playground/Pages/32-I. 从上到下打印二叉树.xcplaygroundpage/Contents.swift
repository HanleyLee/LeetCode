/*:
 # 从上到下打印二叉树 II

 给定一个二叉树，返回其按层次遍历的节点值。 （即逐层地，从左到右访问所有节点）。

 ## 示例

 ```
 给定二叉树: [3,9,20,null,null,15,7],

   3
  / \
 9  20
   /  \
  15   7

 返回：

 [3,9,20,15,7]
 ```

 ## Official Link

 <https://leetcode-cn.com/problems/binary-tree-level-order-traversal/>

 ---
 */

import Foundation

// 队列, 层次遍历
class Solution {
    func levelOrder(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }

        var result = [Int]()
        var nodes = [root] // 当前层 node
        var nextLevelNodes = [TreeNode]() // 下一层 node

        while nodes.count > 0 {
            for node in nodes {
                result.append(node.val)

                if node.left != nil {
                    nextLevelNodes.append(node.left!)
                }

                if node.right != nil {
                    nextLevelNodes.append(node.right!)
                }
            }

            nodes = nextLevelNodes
            nextLevelNodes.removeAll()
        }
        return result
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

Solution().levelOrder(root)


