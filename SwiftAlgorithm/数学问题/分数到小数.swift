//
//  分数到小数.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/8.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func fractionToDecimal(_ numerator: Int, _ denominator: Int) -> String {
    if numerator == 0 {
        return "0"
    }
    var flag = 1
    if numerator < 0 {
        flag = -1
    }
    if denominator < 0 {
        flag *= -1
    }
    var result = ""
    var son = numerator > 0 ? numerator : -numerator
    let mom = denominator > 0 ? denominator : -denominator
    if son < denominator {
        result = "0."
    } else {
        let mod = son % mom
        result = "\(son / mom)"
        if mod == 0 {
            return flag < 0 ? "-" + result : result;
        } else {
            son = mod
            result += "."
        }
    }
    // son : begain Index
    var dic = [Int: Int]()
    while son != 0 {
        if let index = dic[son] {
            result.insert("(", at: result.index(result.startIndex, offsetBy: index))
            result += ")"
            return flag < 0 ? "-" + result : result;
        } else {
            dic[son] = result.count
            var numofZero = -1
            var current = son
            while current < mom {
                current *= 10
                numofZero += 1
            }
            let num = current / mom
            for _ in 0..<numofZero {
                result.append("0")
            }
            result.append("\(num)")
            son = current % mom
        }
    }
    return flag < 0 ? "-" + result : result;
}
