//
//  环形链表.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/15.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func hasCycle(_ head: ListNode?) -> Bool {
    if head == nil || head!.next == nil {
        return false
    }
    var slow: ListNode? = head!
    var fast: ListNode? = head!.next!
    while slow != nil && fast != nil {
        if slow === fast {
            return true
        } else {
            slow = slow!.next
            fast = fast!.next?.next
        }
    }
    return false
}
