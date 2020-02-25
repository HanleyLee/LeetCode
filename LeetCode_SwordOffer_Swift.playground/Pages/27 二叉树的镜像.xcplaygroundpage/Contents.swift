/*:
 # 二叉树的镜像

 请完成一个函数，输入一个二叉树，该函数输出它的镜像。

 例如输入：

 ```
           4
       /   \
     2     7
   / \   / \
 1   3 6   9
 镜像输出：

           4
       /   \
     7     2
   / \   / \
 9   6 3   1
```

 ## 示例

 ```
 输入：root = [4,2,7,1,3,6,9]
 输出：[4,7,2,9,6,3,1]
 ```

 ## 限制

 `0 <= 节点个数 <= 1000`

 ## Official Link

 <https://leetcode-cn.com/problems/er-cha-shu-de-jing-xiang-lcof/>

 ---
 */

import Foundation

// 使用递归的方式处理, 基线条件是根节点为空
class Solution {
    func mirrorTree(_ root: TreeNode?) -> TreeNode? {
        guard root != nil else { return nil }

        let temp = root?.left
        root?.left = root?.right
        root?.right = temp

        mirrorTree(root?.left)
        mirrorTree(root?.right)

        return root
    }
}

