//
//  Pow(x, n).swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/8.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation


func myPow(_ x: Double, _ n: Int) -> Double {
    let flag = n > 0 ? 1 : -1
    var n = n * flag
    // pow : value
    var dic = [Int: Double]()
    dic[1] = x
    var pow = 1
    while pow * 2 <= n {
        dic[pow * 2] = dic[pow]! * dic[pow]!
        pow *= 2
    }
    var result = 1.0
    while n >= 1 {
        if n >= pow {
            result *= dic[pow]!
            n -= pow
        }
        if pow > 1 {
            pow /= 2
        }
    }
    return flag > 0 ? result : (1.0 / result)
}
