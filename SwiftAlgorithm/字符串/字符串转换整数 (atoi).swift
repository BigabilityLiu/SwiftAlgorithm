//
//  字符串转换整数 (atoi).swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/14.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func myAtoi(_ str: String) -> Int {
    // nil 未开始读数； 1 正数； -1 负数
    var flag: Int?
    var nums = [Int]()
    for c in str.utf8CString {
        if c == 32 {
            // 空格
            if flag != nil {
                break
            }
        }
        else if c == 43 {
            // +
            if flag == nil {
                flag = 1
            } else {
                break
            }
        }
        else if c == 45 {
            // -
            if flag == nil {
                flag = -1
            } else {
                break
            }
        }
        else if c >= 48 && c <= 57 {
            // 数字
            if flag == nil {
                flag = 1
            }
            if c == 48 && nums.count == 0{
                continue
            } else {
                nums.insert(Int(c) - 48, at: 0)
            }
        } else {
            if flag == nil {
                return 0
            } else {
                break
            }
        }
    }
    if flag == nil { return 0 }
    var result = 0
    var index = flag == 1 ? 1 : -1
    var i = 0
    for n in nums {
        if i == 0 {
            i += 1
        } else {
            if flag == 1 {
                if index <= Int(Int32.max)/10 {
                    index *= 10
                } else {
                    return Int(Int32.max)
                }
            } else {
                if index >= Int(Int32.min)/10 {
                    index *= 10
                } else {
                    return Int(Int32.min)
                }
            }
        }
        let current = n*index
        if flag == 1 {
            if current <= Int(Int32.max) - result {
                result += current
            } else {
                return Int(Int32.max)
            }
        }
        else {
            if current >= Int(Int32.min) - result {
                result += current
            } else {
                return Int(Int32.min)
            }
        }
    }
    return result
}
