//
//  汉明距离.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/12.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func hammingDistance2(_ x: Int, _ y: Int) -> Int {
    var result = 0
    var flag = 1
    while flag > 0 {
        if (x & flag) ^ (y & flag) > 0{
            result += 1
        }
        flag = flag << 1
    }
    return result
}

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    
    var z = x ^ y
    var count = 0
    
    while z > 0 {
        count += 1
        z = z & (z - 1)
    }
    return count
}
