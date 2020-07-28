//
//  两数相加.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/19.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil {
        return l2
    }
    if l2 == nil {
        return l1
    }
    var l1 = l1, l2 = l2
    var result: ListNode? = nil
    var current: ListNode? = nil
    var shouldUp = false
    while l1 != nil || l2 != nil {
        var value = (l1?.val ?? 0 ) + (l2?.val ?? 0)
        if shouldUp {
            value += 1
            shouldUp = false
        }
        if value > 9 {
            shouldUp = true
            value -= 10
        }
        let temp = ListNode(value)
        if result == nil {
            result = temp
            current = temp
        } else {
            current!.next = temp
            current = temp
        }
        l1 = l1?.next
        l2 = l2?.next
    }
    if shouldUp {
        current!.next = ListNode(1)
    }
    return result
}
