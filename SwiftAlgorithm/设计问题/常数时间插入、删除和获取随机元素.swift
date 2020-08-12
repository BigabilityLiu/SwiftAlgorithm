//
//  常数时间插入、删除和获取随机元素.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/8.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

class RandomizedSet {
    /** Initialize your data structure here. */
    var set: Set<Int>
    init() {
        self.set = Set<Int>()
    }
    
    /** Inserts a value to the set. Returns true if the set did not already contain the specified element. */
    func insert(_ val: Int) -> Bool {
        return self.set.insert(val).inserted
    }
    
    /** Removes a value from the set. Returns true if the set contained the specified element. */
    func remove(_ val: Int) -> Bool {
        return self.set.remove(val) != nil
    }
    
    /** Get a random element from the set. */
    func getRandom() -> Int {
        let index = Int.random(in: 0..<self.set.count)
        return Array(self.set)[index]
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
