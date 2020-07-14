//
//  237. 删除链表中的节点.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/6/30.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func reverseList(_ head: ListNode?) -> ListNode? {
    if head == nil {
        return nil
    }
    if head!.next == nil {
        return head
    }
    var first = head!
    var middle = head!.next!
    var last = middle.next
    first.next = nil
    while last != nil {
        middle.next = first
        first = middle
        middle = last!
        last = last!.next
    }
    return middle
    
}
