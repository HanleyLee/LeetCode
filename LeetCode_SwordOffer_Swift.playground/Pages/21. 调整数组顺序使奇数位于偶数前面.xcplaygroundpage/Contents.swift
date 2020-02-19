/**
 # 调整数组顺序使奇数位于偶数前面

 输入一个整数数组，实现一个函数来调整该数组中数字的顺序，使得所有奇数位于数组的前半部分，所有偶数位于数组的后半部分。

 ## 实例

 ```
 输入：nums = [1,2,3,4]
 输出：[1,3,2,4]
 注：[3,1,2,4] 也是正确的答案之一。
 ```

 ## 提示

- `1 <= nums.length <= 50000`
- `1 <= nums[i] <= 10000`

 ## Official Link

 <https://leetcode-cn.com/problems/diao-zheng-shu-zu-shun-xu-shi-qi-shu-wei-yu-ou-shu-qian-mian-lcof/>

 ---
 */

import Foundation

class Solution {
    func exchange(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }

        var arr = nums
        var p1 = 0
        var p2 = arr.count - 1
        var temp: Int

        while p1 < p2 {
            while p1 < p2 && arr[p1] % 2 != 0 { // 左指针一直向右推到偶数为止(使用p1<p2 是为了防止整个数组没有偶数)
                p1 += 1
            }

            while p1 < p2 && arr[p2] % 2 == 0 { // 右指针一直向左推到奇数为止(使用p1<p2 是为了防止整个数组没有奇数)
                p2 -= 1
            }

            if p1 < p2 { // 经过上方的推进后仍然 p1<p2 (说明两指针没有相遇)
                temp = arr[p1]
                arr[p1] = arr[p2]
                arr[p2] = temp
            }
        }
        return arr
    }
}

let arr1 = [1, 3, 5, 3, 2, 6]
let arr3 = [1]
let arr4 = [4, 5]
let arr5 = [4, 6]
Solution().exchange(arr1)
Solution().exchange(arr3)
Solution().exchange(arr4)
Solution().exchange(arr5)

class Solution1 {
    func exchange(_ nums: [Int]) -> [Int] {
        var oddNumArr = [Int]()
        var evenNumArr = [Int]()

        for i in nums {
            if i % 2 == 0 {
                evenNumArr.append(i)
            } else {
                oddNumArr.append(i)
            }
        }

        return oddNumArr + evenNumArr
    }
}

let arr2 = [1, 3, 5, 3, 2, 6]
Solution().exchange(arr2)

