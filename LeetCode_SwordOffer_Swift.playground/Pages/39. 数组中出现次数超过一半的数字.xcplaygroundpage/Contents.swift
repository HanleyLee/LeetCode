/*:
 # 数组中出现次数超过一半的数字

 数组中有一个数字出现的次数超过数组长度的一半，请找出这个数字。

 你可以假设数组是非空的，并且给定的数组总是存在多数元素。

 ## 示例

 ```
 输入: [1, 2, 3, 2, 2, 2, 5, 4, 2]
 输出: 2
 ```

 ## 限制

 `1 <= 数组长度 <= 50000`

 ## Official Link

 <https://leetcode-cn.com/problems/shu-zu-zhong-chu-xian-ci-shu-chao-guo-yi-ban-de-shu-zi-lcof/>

 ---
 */

import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var nums = nums
        let count = nums.count
        var dict: [Int: Int] = [:]
        while nums.count > 0 {
            let last = nums.popLast()!
            dict[last] = dict[last] == nil ? 1 : dict[last]! + 1
            if dict[last]! > count / 2 {
                return last
            }
        }
        fatalError()
    }
}

var arr1 = [1, 2, 3, 2, 2, 2, 5, 4, 2]
var arr2 = [1, 2, 4, 4, 4]

Solution().majorityElement(arr1)

Solution().majorityElement(arr2)

