/*:
 # 替换空格

 请实现一个函数，把字符串 s 中的每个空格替换成"%20"。

 ## 实例

 ```
 输入：s = "We are happy."
 输出："We%20are%20happy."
 ```

 ## 限制

 `0 <= s 的长度 <= 10000`

 ## Official Link

 <https://leetcode-cn.com/problems/ti-huan-kong-ge-lcof>

 ---
 */
import Foundation

class Solution {
    func replaceSpace(_ s: String) -> String {
        var arr = String()

        for i in s {
            if i == " " {
                arr.append("%20")
            } else {
                arr.append(i)
            }
        }

        return arr
    }
}


Solution().replaceSpace("We are happy")
