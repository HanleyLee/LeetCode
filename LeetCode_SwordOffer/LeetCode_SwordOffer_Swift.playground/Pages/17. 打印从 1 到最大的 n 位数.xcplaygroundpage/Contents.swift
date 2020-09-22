/*:
 # 打印从 1 到最大的 n 位数

 输入数字 n，按顺序打印出从 1 到最大的 n 位十进制数。比如输入 3，则打印出 1、2、3 一直到最大的 3 位数 999。

 ## 示例

 ```
 输入: n = 1
 输出: [1,2,3,4,5,6,7,8,9]
 ```

 ## 说明

 - 用返回一个整数列表来代替打印
 - n 为正整数
 
 ## Official Link

 <https://leetcode-cn.com/problems/da-yin-cong-1dao-zui-da-de-nwei-shu-lcof/>

 ---
 */

import Foundation

class Solution {
    func printNumbers(_ n: Int) -> [Int] {
        var maxNum = 1

        for _ in 1 ... n {
            maxNum = 10 * maxNum
        }

        return [Int](1 ..< maxNum)
    }
}


print(Solution().printNumbers(1))
print(Solution().printNumbers(3))

class Solution1 {
    func printNumbers(_ n: Int) -> [Int] {
        let maxNum = (pow(10, n) as NSDecimalNumber).intValue
        let arr = [Int](1 ..< maxNum)
        return arr
    }

}

Solution1().printNumbers(1)

let arr = [Int](1...3)
print(arr[1])

let max = pow(10, 10)
let num = (max as NSDecimalNumber).intValue
