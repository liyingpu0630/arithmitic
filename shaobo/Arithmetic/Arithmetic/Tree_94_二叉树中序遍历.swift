//
//  Tree_94_二叉树中序遍历.swift
//  Arithmetic
//
//  Created by shaobo10 on 2021/2/16.
//

/*
 * @lc app=leetcode.cn id=94 lang=swift
 *
 * [94] 二叉树的中序遍历
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

 /* 思路：
 基本流程: 先左节点，根节点，右节点
 1. 使用栈结构
 2.
 */
class Solution_94 {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
    if (root == nil) {
        return [];
    }
    
    var stack = [TreeNode]();
    var result = [Int]();

    var tempTreeNode = root;
    stack.append(tempTreeNode!);

    while stack.count > 0 {
        while (tempTreeNode?.left != nil) {
            stack.append(tempTreeNode!.left!);
            tempTreeNode = tempTreeNode!.left;
        }

        let lastNode = stack.popLast();
        result.append(lastNode!.val);

        if (lastNode!.right != nil) {
            tempTreeNode = lastNode!.right!;
            stack.append(tempTreeNode!);
        }
    }

    return result;
    }
}
// @lc code=end

