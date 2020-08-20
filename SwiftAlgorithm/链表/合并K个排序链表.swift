//
//  合并K个排序链表.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/18.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
    var lists: [ListNode?] = lists.filter{ $0 != nil }
    var head: ListNode? = nil
    var current: ListNode? = nil
    while lists.count > 1 {
        var min = Int.max
        var index = 0
        for i in 0..<lists.count {
            let node = lists[i]!
            if node.val < min {
                min = node.val
                index = i
            }
        }
        if head == nil {
            head = ListNode(min)
            current = head
        } else {
            current!.next = ListNode(min)
            current = current!.next!
        }
        if lists[index]!.next == nil {
            lists.remove(at: index)
        } else {
            lists[index] = lists[index]!.next
        }
    }
    if lists.count == 0 {
        return head
    }
    else if lists.count == 1 {
        if head == nil {
            return lists.first!
        } else {
            current!.next = lists.first!
            return head
        }
    }
    return head
}
