//
//  零钱兑换 .swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/6.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    var coins = coins.sorted { $0 > $1 }
    var amount = amount
    var result = 0
    while coins.count > 0 && amount > 0 {
        let firstCoin = coins.first!
        if amount >= firstCoin {
            amount -= firstCoin
            result += 1
        } else {
            coins.removeFirst()
        }
    }
    return amount == 0 ? result : -1
}
