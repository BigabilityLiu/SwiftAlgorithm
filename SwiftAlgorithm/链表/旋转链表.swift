//
//  旋转链表.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/18.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation
func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
    var list = [ListNode]()
    var current = head
    while current != nil {
        list.append(current!)
        current = current!.next
    }
    if list.count > 0 {
        let k = k % list.count
        if k == 0 {
            return head
        }
        list.last!.next = list.first!
        let firstIndex = list.count - k
        if firstIndex > 0 {
            list[firstIndex - 1].next = nil
            return list[firstIndex]
        }
    }
    return head
}
