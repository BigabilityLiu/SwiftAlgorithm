//
//  97. 交错字符串.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/18.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
    if s1.count + s2.count != s3.count {
        return false
    }
    var dic: [Character: Int] = [:]
    for c in s1 {
        if let count = dic[c] {
            dic[c] = count + 1
        } else {
            dic[c] =  1
        }
    }
    for c in s2 {
        if let count = dic[c] {
            dic[c] = count + 1
        } else {
            dic[c] =  1
        }
    }
    for c in s3 {
        if let count = dic[c] {
            if count > 0 {
                dic[c] = count - 1
            } else {
                return false
            }
        } else {
            return false
        }
    }
    return true
}
