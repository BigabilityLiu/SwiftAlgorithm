//
//  两整数之和.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/8.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func getSum(_ a: Int, _ b: Int) -> Int {
    var flag = false
    var result = 0
    var current = 1
    var i = 0
    while current != 0 {
        let x = (current & a)
        let y = (current & b)
        if x | y > 0{
            if x & y > 0 {
                if flag {
                    result = result | current
                } else {
                    flag = true
                }
            } else {
                if flag {
                    
                } else {
                    result = result | current
                }
            }
        } else {
            if flag {
                result = result | current
                flag = false
            }
        }
        i += 1
        current <<= 1
    }
    //        if i == 31 && flag {
    //
    //            return result - Int(Int32.max)
    //        }
    current = 1 << (i - 1)
    
    if current & result > 0 {
        result = result ^ 0
    }
    return result
}
