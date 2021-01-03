//
//  05.swift
//  Arithmetic
//
//  Created by shaobo10 on 2020/12/26.
//

import Foundation

class Solution {
    
    /*
     动态规划算法
     1. 动态转移方程
     dp[i][j] = (s[i] == s[j]) && (j - i < 3 || dp[i + 1][j - 1])
     2. 填动态规划表
     3. 计算
     */
    class func longestPalindrome(_ s: String) ->String {
        
        print("输入值为：\(s)")
        // 如果只有一个字符，那么直接返回
        if s.count < 2 {
            return s
        }
        
        // 初始化动态规划表, 对角线都是true
        var dp = [[Bool]]()
        for index in 0...s.count {
            dp.append([Bool]())
            
            for xt in 0...s.count {
                if index == xt {
                    dp[index].append(false)
                } else {
                    dp[index].append(true)
                }
            }
        }
        
        var maxLen = 0
        var begin = 0
        
        for j in 1..<s.count {
            for i in 0..<j {
                let iIndex = s.index(s.startIndex, offsetBy: i)
                let jIndex = s.index(s.startIndex, offsetBy: j)
                
                let iIndexValue = s[iIndex]
                let jIndexValue = s[jIndex]
                
                if iIndexValue == jIndexValue {
                    if (j - i < 3) {
                        dp[i][j] = true
                    } else {
                        // 我在犹豫dp[i + 1][j - 1] 有没有赋值 答案：其实已经赋值过，在上个分支中已经处理和下面的分支都处理了
                        dp[i][j] = dp[i + 1][j - 1]
                    }
                } else {
                    dp[i][j] = false
                }
                
                if (dp[i][j] == true) {
                    let tLen = j - i + 1
                    if tLen > maxLen {
                        maxLen = tLen
                        begin = i
                    }
                }
            }
        }
        
        // 获取字串
        var result = ""
        for tt in begin..<(begin + maxLen) {
            let subStr = s[s.index(s.startIndex, offsetBy:tt)]
            result.append(subStr)
        }
        
        return result
    }
}


