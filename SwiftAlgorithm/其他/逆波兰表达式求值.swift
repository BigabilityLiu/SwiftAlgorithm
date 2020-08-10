//
//  逆波兰表达式求值.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/8.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func evalRPN(_ tokens: [String]) -> Int {
    func multiply(x: Int, y: Int) -> Int { return x * y }
    func divide(x: Int, y: Int) -> Int { return x / y }
    func plus(x: Int, y: Int) -> Int { return x + y }
    func minus(x: Int, y: Int) -> Int { return x - y }
    let dic = [
        "*" : multiply,
        "/" : divide,
        "+" : plus,
        "-" : minus,
    ]
    var numStack = [Int]()
    for str in tokens {
        if let function = dic[str] {
            let y = numStack.removeLast()
            let x = numStack.removeLast()
            numStack.append(function(x, y))
        } else {
            numStack.append(Int(str) ?? 0)
        }
    }
    return numStack.first!
}
