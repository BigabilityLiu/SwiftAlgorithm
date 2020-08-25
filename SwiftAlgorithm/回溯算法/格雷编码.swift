//
//  格雷编码.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/25.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func grayCode(_ n: Int) -> [Int] {
    if n == 0 { return [0] }
    else if n == 1 { return [0, 1] }
    else {
        let previous = grayCode(n - 1)
        var result = [Int]()
        for n in previous {
            let new = (n << 1)
            result.append(new)
        }
        for i in 0..<previous.count {
            let new = (previous[previous.count - i - 1] << 1) | 1
            result.append(new)
        }
        return result
    }
}
