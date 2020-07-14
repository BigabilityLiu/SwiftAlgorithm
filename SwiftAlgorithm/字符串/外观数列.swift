//
//  外观数列.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/14.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func countAndSay(_ n: Int) -> String {
    if n == 0 {
        return ""
    }
    if n == 1 {
        return "1"
    }
    var previous = [1]
    var result = [Int]()
    
    for _ in 2...n {
        var currentNumber = -1
        var currentCount = 1
        for num in previous {
            if currentNumber == -1 {
                currentNumber = num
            } else {
                if currentNumber == num {
                    currentCount += 1
                } else {
                    result.append(currentCount)
                    result.append(currentNumber)
                    currentNumber = num
                    currentCount = 1
                }
            }
        }
        result.append(currentCount)
        result.append(currentNumber)
        previous = result
        result = [Int]()
    }
    var ret = ""
    for int in previous {
        ret = ret + "\(int)"
    }
    return ret
}
