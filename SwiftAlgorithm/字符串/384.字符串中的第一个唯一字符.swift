//
//  字符串中的第一个唯一字符.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/6/30.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func firstUniqChar(_ s: String) -> Int {
    var firstIndexDic = [Character : Int]()
    var history = [Bool]()
    var i = 0
    for c in Array(s) {
        if let index = firstIndexDic[c] {
            history.append(false)
            if index != -1 {
                firstIndexDic[c] = -1
                history[index] = false
            }
        } else {
            firstIndexDic[c] = i
            history.append(true)
        }
        i += 1
    }
    i = 0
    for result in history {
        if result {
            return i
        }
        i += 1
    }
    return -1
}
