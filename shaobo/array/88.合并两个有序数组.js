/*
 * @lc app=leetcode.cn id=88 lang=javascript
 *
 * [88] 合并两个有序数组
 */

// @lc code=start
/**
 * @param {number[]} nums1
 * @param {number} m
 * @param {number[]} nums2
 * @param {number} n
 * @return {void} Do not return anything, modify nums1 in-place instead.
 */
var merge = function(nums1, m, nums2, n) {
    var maxLength = m + n;
    var t = maxLength - 1;

    var p = m - 1;
    var q = n - 1;

    while (t > -1) {
        let value1 = nums1[p];
        let value2 = nums2[q];

        if (value2 >= value1 && q > -1) {
            nums1[t] = value2;
            q--;
        }

        if (value1 > value2 && p > -1) {
            nums1[t] = value1;
            p--;
        }

        t--;
    }
};
// @lc code=end

