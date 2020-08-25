//
//  ListNode.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/6/30.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    init(_ list: [Int]) {
        
        let head = ListNode(list[0])
        var current = head
        for i in 1..<list.count {
            let temp = ListNode(list[i])
            current.next = temp
            current = temp
        }
        self.val = head.val
        self.next = head.next
    }
}
extension ListNode: Hashable {
    public func hash(into hasher: inout Hasher) {
         hasher.combine(ObjectIdentifier(self).hashValue)
    }
}
extension ListNode: Equatable {
    public static func ==(lhs: ListNode, rhs: ListNode) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
}
