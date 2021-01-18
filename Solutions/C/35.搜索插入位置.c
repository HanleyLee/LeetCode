/*
 * @lc app=leetcode.cn id=35 lang=c
 *
 * [35] 搜索插入位置
 *
 * https://leetcode-cn.com/problems/search-insert-position/description/
 *
 * algorithms
 * Easy (46.87%)
 * Likes:    792
 * Dislikes: 0
 * Total Accepted:    305.1K
 * Total Submissions: 649.7K
 * Testcase Example:  '[1,3,5,6]\n5'
 *
 * 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
 *
 * 你可以假设数组中无重复元素。
 *
 * 示例 1:
 *
 * 输入: [1,3,5,6], 5
 * 输出: 2
 *
 *
 * 示例 2:
 *
 * 输入: [1,3,5,6], 2
 * 输出: 1
 *
 *
 * 示例 3:
 *
 * 输入: [1,3,5,6], 7
 * 输出: 4
 *
 *
 * 示例 4:
 *
 * 输入: [1,3,5,6], 0
 * 输出: 0
 *
 *
 */

// @lc code=start
#include <stdio.h>

// 遍历法
/* int searchInsert(int *nums, int numsSize, int target) { */
/*     for (int i = 0; i < numsSize; i++) { */
/*         if (target <= nums[i]) { */
/*             return i; */
/*         } */
/*     } */
/*     return numsSize; */
/* } */

// 二分法
int searchInsert(int *nums, int numsSize, int target) {
    if (target > nums[numsSize - 1]) {
        return numsSize;
    }
    int left = 0;
    int right = numsSize - 1;
    while (left < right) {
        int mid = left + (right - left) / 2;
        if (nums[mid] >= target) {
            right = mid;
        } else {
            left = mid + 1;
        }
    }
    return left;
}

int main() {
    int nums[5] = {1, 1, 1, 1, 3};
    int res = searchInsert(nums, 5, 7);
    printf("%d", res);
}
// @lc code=end
