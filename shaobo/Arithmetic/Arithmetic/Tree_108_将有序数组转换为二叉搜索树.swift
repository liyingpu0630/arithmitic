//
//  Tree_108_将有序数组转换为二叉搜索树.swift
//  Arithmetic
//
//  Created by shaobo10 on 2021/2/15.
//

/*
  @lc app=leetcode.cn id=108 lang=swift
 
  [108] 将有序数组转换为二叉搜索树
 */

// @lc code=start

//  Definition for a binary tree node.
  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
          self.val = val
          self.left = left
          self.right = right
      }
  }

class Solution_108 {
    func sortedArrayToBST(_ num: [Int]) -> TreeNode? {
        if (0 == num.count) {
            return nil;
        }

        let middleIndex = num.count/2;
        let treeNode = TreeNode(num[middleIndex]);

        // add leftNode Tree
        if (middleIndex >= 0) {
           var leftSubNum = [Int]();
            for index in 0..<middleIndex {
            leftSubNum.append(num[index]);
            }
            let leftTreeNode = sortedArrayToBST(leftSubNum);
            treeNode.left = leftTreeNode;
        }
        
        // add rightNode Tree
        if (middleIndex+1 < num.count) {
            var rightSubNum = [Int]();
            for index in middleIndex+1..<num.count {
            rightSubNum.append(num[index]);
            }

            let rightTreeNode = sortedArrayToBST(rightSubNum);
            treeNode.right = rightTreeNode;
        }

        return treeNode;
    }
}
// @lc code=end

