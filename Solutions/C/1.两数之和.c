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

#include <AvailabilityInternal.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/cdefs.h>
#include <sys/resource.h>
#include <sys/signal.h>
#include <uthash.h>

typedef struct hashTable {
    int key;
    int val;
    UT_hash_handle hh;
} HashTable;

HashTable *hashtable;

HashTable *find(int ikey) {
    HashTable *tmp;
    HASH_FIND_INT(hashtable, &ikey, tmp);
    return tmp;
}

void insert(int ikey, int ival) {
    HashTable *it = find(ikey);
    if (it == NULL) {
        HashTable *tmp = malloc(sizeof(HashTable));
        (void)(tmp->key = ikey), tmp->val = ival;
        HASH_ADD_INT(hashtable, key, tmp);
    } else {
        it->val = ival;
    }
}

int *twoSum(int *nums, int numsSize, int target, int *returnSize) {
    hashtable = NULL;
    for (int i = 0; i < numsSize; i++) {
        HashTable *it = find(target - nums[i]);
        if (it != NULL) {
            int *res = malloc(sizeof(int) * numsSize);
            res[0] = it->val;
            res[1] = i;
            *returnSize = 2;
            return res;
        }
        insert(nums[i], i);
    }
    *returnSize = 0;
    return NULL;
}


// 暴力遍历法
int *twoSum1(int *nums, int numsSize, int target, int *returnSize) {
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


int main(int argc, const char * argv[]) {
    int arr[4] = {1, 2, 5, 7};
    int returnsize = 0;
    int *a;
    a = twoSum(arr, 4, 9, &returnsize);
    for (int i = 0; i < returnsize; i++) {
        printf("*(arr + %d): %d\n", i, a[i]);
    }
    return 0;
}
