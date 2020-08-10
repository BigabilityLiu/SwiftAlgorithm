//
//  合并区间.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/4.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func merge(_ intervals: [[Int]]) -> [[Int]] {
    if intervals.count <= 1 {
        return intervals
    }
    var indexs = [(Int, Bool)]()
    for range in intervals {
        var i = 0
        var inserted = false
        while i < indexs.count {
            if range[0] < indexs[i].0 {
                indexs.insert((range[0], true), at: i)
                inserted = true
                break
            }
            else if range[0] == indexs[i].0 {
                indexs[i].1 = true
                inserted = true
                break
            } else {
                i += 1
            }
        }
        if inserted == false {
            indexs.append((range[0], true))
            indexs.append((range[1], false))
        } else {
            inserted = false
            while i < indexs.count {
                if range[1] < indexs[i].0 {
                    indexs.insert((range[1], false), at: i)
                    inserted = true
                    break
                }
                else if range[1] == indexs[i].0 {
                    indexs.insert((range[1], false), at: i + 1)
                    inserted = true
                    break
                } else {
                    i += 1
                }
            }
            if inserted == false {
                indexs.append((range[1], false))
            }
        }
    }
    var result = [[Int]]()
    for (num, isStart) in indexs {
        if isStart {
            if result.count == 0 {
                result.append([num])
            } else {
                if result.last!.count == 2 {
                    result.append([num])
                }
            }
            
        } else {
            if result.last!.count == 1 {
                result[result.count - 1].append(num)
            } else {
                result[result.count - 1][1] = num
            }
        }
    }
    return result
}
