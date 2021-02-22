/*
 * @lc app=leetcode.cn id=22 lang=c
 *
 * [22] 括号生成
 *
 * https://leetcode-cn.com/problems/generate-parentheses/description/
 *
 * algorithms
 * Medium (76.86%)
 * Likes:    1567
 * Dislikes: 0
 * Total Accepted:    229.9K
 * Total Submissions: 299.1K
 * Testcase Example:  '3'
 *
 * 数字 n 代表生成括号的对数，请你设计一个函数，用于能够生成所有可能的并且 有效的 括号组合。
 *
 *
 *
 * 示例 1：
 *
 *
 * 输入：n = 3
 * 输出：["((()))","(()())","(())()","()(())","()()()"]
 *
 *
 * 示例 2：
 *
 *
 * 输入：n = 1
 * 输出：["()"]
 *
 *
 *
 *
 * 提示：
 *
 *
 * 1
 *
 *
 */

// @lc code=start

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

void generate(char *item, int index, int left, int right, char **result, int *count, int n) {
    if (left == 0 && right == 0) {
        result[(*count)] = (char *)malloc(sizeof(char)*(2 * n + 1));
        strcpy(result[(*count)++],item);
        return;
    }
    item[index] = '(';
    item[index + 1] = ')';

    if (left > 0)
        generate(item, index + 1, left - 1, right, result, count, n);
    if (right > left) {
        item[index] = ')';
        generate(item, index + 1, left, right - 1, result, count, n);
    }
}

char **generateParenthesis(int n, int *returnSize) {
    int left = n, right = n;
    int length = 2*2*n;
    int count = 0;
    int index = 0;

    char **result = (char **) malloc(sizeof(char *) * (5000));
    char *item = (char *)malloc(sizeof(char) * (2*n+1));

    generate(item, index, left, right, result, &count, n);
    *returnSize = count;

    return result;
}

int main() {

    int num = 3;

    char **test = generateParenthesis(3, &num);
    char *tt = *test;

    printf(*test);
    return 0;
}
// @lc code=end
