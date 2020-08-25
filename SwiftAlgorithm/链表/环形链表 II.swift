//
//  环形链表 II.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/21.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation
func detectCycle(_ head: ListNode?) -> ListNode? {
    if head == nil {
        return nil
    }
    var p = head
    var set = Set<ListNode>()
    while p != nil {
        if set.contains(p!) {
            return p
        } else {
            set.insert(p!)
        }
        p = p!.next
    }
    return nil
}


