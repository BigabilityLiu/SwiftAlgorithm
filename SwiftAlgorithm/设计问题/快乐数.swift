//
//  快乐数.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/8.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

class Solution233 {
    func isHappy(_ n: Int) -> Bool {
        var set = Set<Int>()
        var n = n
        while n != 1 {
            n = bitSquareSum(n)
            if set.insert(n).inserted == false {
                return false
            }
        }
        return true
        
    }
    
    func bitSquareSum(_ n: Int) -> Int {
        var begin = n
        var end = 0
        while begin != 0 {
            let number = begin % 10
            begin = (begin - number)/10
            end += number*number
        }
        return end
    }
}
