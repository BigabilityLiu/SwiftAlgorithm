//
//  买卖股票的最佳时机.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/12.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    // 一次买卖
    var buyPrice = Int.max
    var result = 0
    for price in prices {
        if price < buyPrice {
            buyPrice = price
        }
        if price - buyPrice > result {
            result = price - buyPrice
        }
    }
    return result
    // 多次买卖
//    if prices.count < 2 {
//        return 0
//    }
//    var result = 0
//    for i in 1..<prices.count {
//        if prices[i] > prices[i-1] {
//            result += prices[i] - prices[i-1]
//        }
//    }
//    return result
}
