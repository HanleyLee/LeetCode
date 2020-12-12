/*
 * @lc app=leetcode.cn id=1 lang=c
 *
 * [1] 两数之和
 *
 * https://leetcode-cn.com/problems/two-sum/description/
 *
 * algorithms
 * Easy (49.63%)
 * Likes:    9299
 * Dislikes: 0
 * Total Accepted:    1.4M
 * Total Submissions: 2.9M
 * Testcase Example:  '[2,7,11,15]\n9'
 *
 * 给定一个整数数组 nums 和一个目标值
 * target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
 *
 * 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
 *
 *
 *
 * 示例:
 *
 * 给定 nums = [2, 7, 11, 15], target = 9
 *
 * 因为 nums[0] + nums[1] = 2 + 7 = 9
 * 所以返回 [0, 1]
 *
 *
 */

// @lc code=start

#include <stdio.h>
#include <stdlib.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int *twoSum(int *nums, int numsSize, int target, int *returnSize) {
    int i, j;
    int *tmp = (int *)malloc(sizeof(int) * 2);

    for (i = 0; i < numsSize; j++) {
        for (j = i + 1; j < numsSize; j++) {
            if ((nums[i] + nums[j] == target)) {
                tmp[0] = i;
                tmp[1] = j;
                *returnSize = 2;
                return tmp;
            }
        }
    }

    *returnSize = 0;
    return 0;
}
// @lc code=end
