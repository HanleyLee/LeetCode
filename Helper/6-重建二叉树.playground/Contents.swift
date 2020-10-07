/*
 前序遍历：根 -> 左 -> 右
 中序遍历：左 -> 根 -> 右
 后序遍历：左 -> 右 -> 根
 
 题目：输入某二叉树的前序遍历和中序遍历的结果，请重建该二叉树，假设输入的前序遍历和中序遍历的结果中都不含重复的数字。例如输入前序遍历序列[1, 2, 4, 7, 3, 5, 6, 8]和中序遍历序列[4, 7, 2, 1, 5, 3, 8, 6]则重建出二叉树并输出他的头节点。
 **********************
     1
    / \
   2   3
  /   / \
 4   5   6
  \     /
   7   8
 **********************
 */
import UIKit
import Foundation

class BinaryTreeNode {
    var value: Int!
    var leftNode: BinaryTreeNode?
    var rightNode: BinaryTreeNode?
    
    init(value: Int) {
        self.value = value
    }
}

func rebuildBinaryTree(pre: [Int], mid: [Int]) -> BinaryTreeNode? {
    
    let rootValue = pre[0];
    let root = BinaryTreeNode(value: rootValue)
    let midRootIndex = mid.index(of: rootValue)!
    
    if midRootIndex > 0 {
        root.leftNode = rebuildBinaryTree(pre: Array(pre[1...midRootIndex]), mid: Array(mid[0..<midRootIndex]))
    }
    if midRootIndex < mid.count - 1 {
        root.rightNode = rebuildBinaryTree(pre: Array(pre[midRootIndex+1..<pre.count]), mid: Array(mid[midRootIndex+1..<mid.count]))
    }
    
    return root
}

let pre = [1, 2, 4, 7, 3, 5, 6, 8]
let mid = [4, 7, 2, 1, 5, 3, 8, 6]

let root = rebuildBinaryTree(pre: pre, mid: mid)

func printPre(node: BinaryTreeNode?) {
    guard let node = node else {
        return
    }
    print(node.value)
    printPre(node: node.leftNode)
    printPre(node: node.rightNode)
}

func printMid(node: BinaryTreeNode?) {
    guard let node = node else {
        return
    }
    if node.leftNode != nil {
        printPre(node: node.leftNode)
    }
    print(node.value)
    if node.rightNode != nil {
        printPre(node: node.rightNode)
    }
}

printPre(node: root)

print("-----------")

printMid(node: root)
