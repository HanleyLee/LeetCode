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
 返回其层次遍历结果：

 [
 [3],
 [9,20],
 [15,7]
 ]
 ```

 ## Official Link

 <https://leetcode-cn.com/problems/binary-tree-level-order-traversal/>

 ---
 */

import Foundation

// 利用队列的方式, 层次遍历
class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }

        var result = [[Int]]() // 构造最终返回的结果数组
        var queue = [root] // 存储当前层的所有节点
        var nextLevelQueue = [TreeNode]() // 存储下一层的所有节点

        while queue.count > 0 {
            var temp = [Int]()
            for node in queue {
                temp.append(node.val)

                if node.left != nil {
                    nextLevelQueue.append(node.left!)
                }

                if node.right != nil {
                    nextLevelQueue.append(node.right!)
                }
            }
            result.append(temp)
            temp.removeAll()
            queue = nextLevelQueue
            nextLevelQueue.removeAll()
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


//var result: [[Int]] = []
//func levelOrder(_ root: TreeNode?) -> [[Int]] {
//    guard let tree = root else {return []}
//    levelOrder(tree, level: 0)
//    return result
//}
//
//func levelOrder(_ node: TreeNode, level: Int) {
//    if result.count == level {
//        result.append([node.val])
//    } else {
//        var tmp = result[level]
//        tmp.append(node.val)
//        result[level] = tmp
//    }
//    if let left = node.left {
//        levelOrder(left, level: level + 1)
//    }
//    if let right = node.right {
//        levelOrder(right, level: level + 1)
//    }
//}
//

