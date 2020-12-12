/*
 * @lc app=leetcode.cn id=3 lang=c
 *
 * [3] 无重复字符的最长子串
 *
 * https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/description/
 *
 * algorithms
 * Medium (35.72%)
 * Likes:    4479
 * Dislikes: 0
 * Total Accepted:    699K
 * Total Submissions: 2M
 * Testcase Example:  '"abcabcbb"'
 *
 * 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
 *
 * 示例 1:
 *
 * 输入: "abcabcbb"
 * 输出: 3
 * 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
 *
 *
 * 示例 2:
 *
 * 输入: "bbbbb"
 * 输出: 1
 * 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
 *
 *
 * 示例 3:
 *
 * 输入: "pwwkew"
 * 输出: 3
 * 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
 * 请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
 *
 *
 */

// @lc code=start

#include <stdio.h>

int lengthOfLongestSubstring(char *s) {
    int start = 0;
    int end = 0;
    int length = 0;
    int max = 0;

    while (end < strlen(s)) {
        char tmpchar = s[end];

        for (int index = start; index < end; index++) {
            if (tmpchar == s[index]) {
                start = index + 1;
                length = end - start;
                break;
            }
        }

        length++;
        end++;
        max = max < length ? length : max;
    }

    return max;
}
// @lc code=end
