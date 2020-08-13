//
//  字符串相乘.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/13.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func multiply(_ num1: String, _ num2: String) -> String {
    if num1 == "0" || num2 == "0" {
        return "0"
    }
    let num1Array = num1.unicodeScalars.map{ Int($0.value - 48) }
    var flag = 1
    var result = 0
    for i in 0..<num1Array.count {
        let n = num1Array[num1Array.count - i - 1] * flag
        if Int.max - result >= n {
            result += n
            flag *= 10
        } else {
            return String(Int.max)
        }
    }
    let num1Result = result
    let num2Array = num2.unicodeScalars.map{ Int($0.value - 48) }
    result = 0
    flag = 1
    for i in 0..<num2Array.count {
        let n = num2Array[num2Array.count - i - 1] * flag
        if Int.max - result >= n {
            result += n
            flag *= 10
        } else {
            return String(Int.max)
        }
    }
    let num2Result = result
    if (Int.max - (Int.max % num1Result)) / num1Result >= num2Result {
        return String(num1Result * num2Result)
    } else {
        return String(Int.max)
    }
//    for i in 0..<num2Array.count {
//        if Int.max / flag >= num2Array[num2Array.count - i - 1] {
//            let n = num2Array[num2Array.count - i - 1] * flag
//            if n == 0 {
//                flag *= 10
//            } else {
//                if Int.max / n >= num1Result{
//                    result += n * num1Result
//                    flag *= 10
//                } else {
//                    return String(Int.max)
//                }
//            }
//        } else {
//            return String(Int.max)
//        }
//
//    }
}
