/*:
 # 旋转数组的最小数字

 把一个数组最开始的若干个元素搬到数组的末尾，我们称之为数组的旋转。输入一个递增排序的数组的一个旋转，输出旋转数组的最小元素。例如，数组 [3,4,5,1,2] 为 [1,2,3,4,5] 的一个旋转，该数组的最小值为1。

 ## 示例

 ```
 输入：[3,4,5,1,2]
 输出：1
 ```

 ```
 输入：[2,2,2,0,1]
 输出：0
 ```

 ## Official Link

 <https://leetcode-cn.com/problems/xuan-zhuan-shu-zu-de-zui-xiao-shu-zi-lcof/>

 ---
 */

import Foundation

class Solution {
    func minArray(_ numbers: [Int]) -> Int {
        for i in 1 ..< numbers.count {
            if numbers[i] < numbers[i - 1] {
                return numbers[i]
            }
        }
        return numbers.first!
    }
}

let testArr1 = [1, 3, 5]
let testArr2 = [2, 2, 2, 0, 1]

Solution().minArray(testArr1)
Solution().minArray(testArr2)
