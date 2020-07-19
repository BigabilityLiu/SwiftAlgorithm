//
//  回文链表.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/15.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func isPalindrome(_ head: ListNode?) -> Bool {
    if head == nil {
        return true
    }
    var reverse: ListNode = head!
    var p = head!
    while p.next != nil {
        let temp = ListNode(p.next!.val)
        temp.next = reverse
        reverse = temp
        p = p.next!
    }
    p = head!
    while p.next != nil {
        if p.val != reverse.val {
            return false
        } else {
            p = p.next!
            reverse = reverse.next!
        }
    }
    return true
}
