//
//  最小栈.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/16.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

class MinStack {
    var currentMinStack: [Int]
    var stack: [Int]
    /** initialize your data structure here. */
    init() {
        currentMinStack = [Int]()
        stack = [Int]()
    }
    
    func push(_ x: Int) {
        stack.append(x)
        if currentMinStack.count == 0 {
            currentMinStack.append(x)
        } else {
            currentMinStack.append(min(x, currentMinStack.last!))
        }
    }
    
    func pop() {
        if stack.count > 0 {
            stack.removeLast()
            currentMinStack.removeLast()
        }
    }
    
    func top() -> Int {
        if stack.count > 0 {
            return stack.last!
        } else {
            return 0
        }
    }
    
    func getMin() -> Int {
        if currentMinStack.count > 0 {
            return currentMinStack.last!
        } else {
            return 0
        }
    }
}
