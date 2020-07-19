//
//  合并两个有序链表.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/15.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil {
        return l2
    }
    if l2 == nil {
        return l1
    }
    var head: ListNode? = nil
    var current: ListNode? = nil
    var h1 = l1
    var h2 = l2
    while h1 != nil, h2 != nil {
        if h1!.val <= h2!.val {
            if head == nil {
                head = h1!
                current = head!
            } else {
                current!.next = h1!
                current = current!.next!
            }
            h1 = h1!.next
        } else {
            if head == nil {
                head = h2!
                current = head!
            } else {
                current!.next = h2!
                current = current!.next!
            }
            h2 = h2!.next
        }
    }
    if h1 != nil {
        current!.next = h1
    } else {
        current!.next = h2
    }
    return head
}
