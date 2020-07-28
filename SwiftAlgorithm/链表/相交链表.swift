//
//  相交链表.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/23.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    if headA == nil || headB == nil {
        return nil
    }
    var pA = headA!
    var pB = headB!
    reversalList(&pA)
    reversalList(&pB)
    var currentA: ListNode? = pA
    var currentB: ListNode? = pB
    var previous: ListNode? = nil
    while currentA != nil && currentA === currentB {
        previous = currentA
        currentA = currentA!.next
        currentB = currentB!.next
    }
    reversalList(&pA)
    reversalList(&pB)
    return previous
}
func reversalList(_ head: inout ListNode) {
    var current = head.next
    head.next = nil
    while current != nil {
        let temp = current!.next
        current!.next = head
        head = current!
        current = temp
    }
}
