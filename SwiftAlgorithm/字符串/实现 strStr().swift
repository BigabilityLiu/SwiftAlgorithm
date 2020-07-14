//
//  实现 strStr().swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/14.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.count == 0 {
        return 0
    }
    let a1 = Array(haystack)
    let a2 = Array(needle)
    if a1.count < a2.count {
        return -1
    }
    for i in 0...a1.count - a2.count {
        for j in 0..<a2.count {
            if a1[j + i] == a2[j] {
                if j == a2.count - 1 {
                    return i
                }
            } else {
                break
            }
        }
    }
    return -1
}
