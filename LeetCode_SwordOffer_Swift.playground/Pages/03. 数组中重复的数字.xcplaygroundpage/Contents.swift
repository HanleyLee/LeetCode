
/*:
 # 数组中重复的数字

 找出数组中重复的数字。

 在一个长度为 `n` 的数组 `nums` 里的所有数字都在 `0～n-1` 的范围内。数组中某些数字是重复的，但不知道有几个数字重复了，也不知道每个数字重复了几次。请找出数组中任意一个重复的数字。

 ## 示例

 ```
 输入：[2, 3, 1, 0, 2, 5, 3]
 输出：2 或 3
 ```

 ## 限制

 `2 <= n <= 100000`

 ## Official Link

 <https://leetcode-cn.com/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof/>
 */

class Solution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var dic:[Int: Int] = [:]

        while nums.count >= 2 && nums.count <= 100000 {
            for i in nums {
                if dic[i] == 1 {
                    return i
                } else {
                    dic[i] = 1
                }
            }
            fatalError("No Repeat Number!")
        }

        fatalError("Numbers too long!")
    }
}

let testNums = Array(1 ... 100000)
let testNums1 = testNums + [1, 2]

Solution().findRepeatNumber(testNums)
Solution().findRepeatNumber(testNums1)
Solution().findRepeatNumber([3, 2, 2, 3, 6])


