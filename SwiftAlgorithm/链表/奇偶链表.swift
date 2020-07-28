//
//  奇偶链表.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/23.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func oddEvenList(_ head: ListNode?) -> ListNode? {
    if head == nil || head!.next == nil{
        return head
    }
    let evenHead = head!.next!
    var p = evenHead
    var currentOdd = head!
    var currentEven = evenHead
    var isOdd = true
    while p.next != nil {
        p = p.next!
        if isOdd {
            currentOdd.next = p
            currentOdd = p
            isOdd = false
        } else {
            currentEven.next = p
            currentEven = p
            isOdd = true
        }
    }
    currentEven.next = nil
    currentOdd.next = evenHead
    return head
}
