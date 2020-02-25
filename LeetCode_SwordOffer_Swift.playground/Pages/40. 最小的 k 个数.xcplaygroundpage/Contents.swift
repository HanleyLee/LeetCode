/*:
 # 最小的 k 个数

 输入整数数组 arr ，找出其中最小的 k 个数。例如，输入4、5、1、6、2、7、3、8这8个数字，则最小的4个数字是1、2、3、4。

 ## 示例

 ```
 输入：arr = [3,2,1], k = 2
 输出：[1,2] 或者 [2,1]
 ```

 ```
 输入：arr = [0,1,2,1], k = 1
 输出：[0]
 ```

 ## 限制

 - 0 <= k <= arr.length <= 1000
 - 0 <= arr[i] <= 1000

 ## Official Link

 <https://leetcode-cn.com/problems/zui-xiao-de-kge-shu-lcof/>

 ---
 */

import Foundation

class Solution {
    func getLeastNumbers(_ arr: [Int], _ k: Int) -> [Int] {
        var arr = arr
        arr.sort()
        return Array(arr[0 ..< k]) // arr[0 ..< k] 是 ArraySlice 类型, 若要返回 Array 类型则需要转换
    }
}

var arr = [1, 5, 2, 3, 6, 4]
Solution().getLeastNumbers(arr, 3) // [1, 2, 3]
