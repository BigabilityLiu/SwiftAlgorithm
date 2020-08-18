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
    let num1Array: [Int] = num1.unicodeScalars.map{ Int($0.value - 48) }.reversed()
    let num2Array: [Int] = num2.unicodeScalars.map{ Int($0.value - 48) }.reversed()
    var dic = [Int: [Int]]()// key: num2 Number value: num1Array * key
    var index = 0
    var resultArray = [[Int]]()
    for number2 in num2Array {
        var array = [Int]()
        if let a = dic[number2] {
            array = a
        } else {
            var flag = 0 // 升位
            for number1 in num1Array {
                let multiple = number1 * number2
                var mod = multiple % 10 + flag
                flag = multiple / 10
                if mod >= 10 {
                    flag += 1
                    mod -= 10
                }
                array.append(mod)
            }
            while flag > 0 {
                array.append(flag % 10)
                flag = flag / 10
            }
            dic[number2] = array
        }
        for _ in 0..<index {
            array.insert(0, at: 0)
        }
        resultArray.append(array)
        index += 1
    }
    var flag = 0
    index = 0
    var result = [Int]()
    while true {
        var current = 0
        var shouldContinue = false
        for array in resultArray {
            if array.count > index {
                shouldContinue = true
                current += array[index]
            }
        }
        if shouldContinue {
            current += flag
            flag = current / 10
            result.append(current % 10)
            index += 1
            current = 0
        } else {
            while flag > 0 {
                result.append(flag % 10)
                flag = flag / 10
            }
            break
        }
    }
    return result.reversed().reduce("") { (r, number) -> String in
        return r + String(number)
    }
}
