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

    while (p > -1 && q > -1) {
        nums1[t--] = nums2[q] > nums1[p] ? nums2[q--] : nums1[p--];
    }

    while (q > -1) {
        nums1[t--] = nums2[q--];
    }
};
// @lc code=end

