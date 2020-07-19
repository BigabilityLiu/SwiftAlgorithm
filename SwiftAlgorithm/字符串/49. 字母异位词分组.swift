//
//  字母异位词分组.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/19.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    let strsSorted = strs.map{ String($0.sorted()) }
    var strIndexInResult = [Int]()
    var result = [[String]]()
    for i in 0..<strsSorted.count {
        if i == 0 {
            result.append([strs[0]])
            strIndexInResult.append(0)
        } else {
            var findEqual = false
            for j in 0..<i {
                if strsSorted[j] == strsSorted[i] {
                    let index = strIndexInResult[j]
                    result[index].append(strs[i])
                    strIndexInResult.append(index)
                    findEqual = true
                    break
                }
            }
            if !findEqual {
                result.append([strs[i]])
                strIndexInResult.append(result.count - 1)
            }
        }
    }
    
    return result
}
