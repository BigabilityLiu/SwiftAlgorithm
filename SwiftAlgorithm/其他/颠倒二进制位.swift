//
//  颠倒二进制位.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/13.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func reverseBits(_ n: Int) -> Int {
    var flag = 1
    var result = 0
    for i in 0...31 {
        var x = flag & n
        if x > 0 {
            x = x << (31 - i*2)
            result = result | x
        }
        flag = flag << 1
    }
    return result
}
