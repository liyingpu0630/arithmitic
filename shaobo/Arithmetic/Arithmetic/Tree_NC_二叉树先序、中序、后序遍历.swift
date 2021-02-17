//
//  Tree_NC_二叉树先序、中序、后序遍历.swift
//  Arithmetic
//
//  Created by shaobo10 on 2021/2/16.
//

/**
 * public class TreeNode {
 *   public var val: Int
 *   public var left: TreeNode?
 *   public var right: TreeNode?
 *   public init(_ val: Int=0, _ left: TreeNode?=nil, _ right: TreeNode?=nil) {
 *     self.val = val
 *     self.left = left
 *     self.right = right
 *   }
 */

public class Solution_NC_BinaryTraversal {
    /**
     * 代码中的类名、方法名、参数名已经指定，请勿修改，直接返回方法规定的值即可
     *
     * @param root TreeNode类 the root of binary tree
     * @return int整型二维数组
     */
    func threeOrders ( _ root: TreeNode?) -> [[Int]] {
        
        let inorderTraversalResult = inorderTraversal(root);
        let preorderTraversalResult = preorderTraversal(root);
        let postorderTraveralResult = postorderTraversal(root);

        var result = [[Int]]();
        result.append(preorderTraversalResult);
        result.append(inorderTraversalResult);
        result.append(postorderTraveralResult);

        return result;
    }
    
    // 先序遍历
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        if (root == nil) {
            return [Int]();
        }
        
        var stack: [TreeNode] = [TreeNode]();
        var result: [Int] = [Int]();
        
        result.append(root!.val);
        stack.append(root!);
        var tempNode: TreeNode? = root;
        while (stack.count > 0) {
            while (tempNode?.left != nil) {
                result.append(tempNode!.left!.val);
                stack.append(tempNode!.left!);
                tempNode = tempNode!.left!;
            }
            
            if let last = stack.popLast() {
                tempNode = nil;
                if (last.right != nil) {
                    result.append(last.right!.val);
                    stack.append(last.right!);
                    tempNode = last.right;
                }
            }
        }
        return result;
    }
    
    // 中序遍历
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        if (root == nil) {
            return [Int]();
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
    
     // 后序遍历
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        if (nil == root) {
            return [Int]();
        }
        
        var stack1 = [TreeNode]();
        var stack2 = [TreeNode]();
        stack1.append(root!);
        
        while (stack1.count > 0) {
            let node = stack1.popLast();
            stack2.append(node!);
            
            if (node!.left != nil) { stack1.append(node!.left!);}
            if (node!.right != nil) { stack1.append(node!.right!);}
        }
        
        var result = [Int]();
        while (stack2.count > 0) {
            let node = stack2.popLast();
            result.append(node!.val);
        }

        return result;
    }
}

public class Solution_ThreeTraversal {
 

        /**
         * 代码中的类名、方法名、参数名已经指定，请勿修改，直接返回方法规定的值即可
         *
         * @param root TreeNode类 the root of binary tree
         * @return int整型二维数组
         */
        func threeOrders ( _ root: TreeNode?) -> [[Int]] {
            
            let inorderTraversalResult = inorderTraversal(root);
            let preorderTraversalResult = preorderTraversal(root);
            let postorderTraveralResult = postorderTraversal(root);

            var result = [[Int]]();
            result.append(preorderTraversalResult);
            result.append(inorderTraversalResult);
            result.append(postorderTraveralResult);

            return result;
        }
        
        // 先序遍历
        func preorderTraversal(_ root: TreeNode?) -> [Int] {
            if (root == nil) {
                return [Int]();
            }
            
            var stack: [TreeNode] = [TreeNode]();
            var result: [Int] = [Int]();
            
            result.append(root!.val);
            stack.append(root!);
            var tempNode: TreeNode? = root;
            while (stack.count > 0) {
                while (tempNode?.left != nil) {
                    result.append(tempNode!.left!.val);
                    stack.append(tempNode!.left!);
                    tempNode = tempNode!.left!;
                }
                
                if let last = stack.popLast() {
                    tempNode = nil;
                    if (last.right != nil) {
                        result.append(last.right!.val);
                        stack.append(last.right!);
                        tempNode = last.right;
                    }
                }
            }
            return result;
        }
        
        // 中序遍历
        func inorderTraversal(_ root: TreeNode?) -> [Int] {
            if (root == nil) {
                return [Int]();
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
        
         // 后序遍历
        func postorderTraversal(_ root: TreeNode?) -> [Int] {
            if (nil == root) {
                return [Int]();
            }
            
            var stack1 = [TreeNode]();
            var stack2 = [TreeNode]();
            stack1.append(root!);
            
            while (stack1.count > 0) {
                let node = stack1.popLast();
                stack2.append(node!);
                
                if (node!.left != nil) { stack1.append(node!.left!);}
                if (node!.right != nil) { stack1.append(node!.right!);}
            }
            
            var result = [Int]();
            while (stack2.count > 0) {
                let node = stack2.popLast();
                result.append(node!.val);
            }

            return result;
        }
    }
