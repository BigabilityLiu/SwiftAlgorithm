//
//  三数之和.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/18.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
   var results:[[Int]] = []
   let count = nums.count
   if count < 3 { return results }
   var sortNums = nums
   sortNums.sort(by: { $0 < $1 })

   for i in 0..<count {
       if sortNums[i] > 0 { break }
       if i > 0 && sortNums[i] == sortNums[i - 1] { continue }
       var L = i + 1
       var R = count - 1
       while L < R {
        let sum = sortNums[i] + sortNums[L] + sortNums[R]
        if (sum == 0) {
            results.append([sortNums[i],sortNums[L],sortNums[R]])
            while L < R && sortNums[L] == sortNums[L + 1] { L+=1 }
            while L < R && sortNums[R] == sortNums[R - 1] { R-=1 }
            R-=1
        } else if sum < 0 {
            L+=1
        } else if sum > 0 {
            R-=1
        }
       }
   }
   return results
}
