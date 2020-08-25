//
//  main.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/4/3.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation
let s1 =
"""
"已退款"
"待付款"
"安全验证"
"输入员工密码"
"输入超级管理员密码"
"密码不能为空"
"作废发票成功"
"确认"
"门市电话"
"""
let s2 =
"""
"refunded"
"Pending payment"
"safety verification"
"Enter employee password"
"Enter the super administrator password"
"password can not be blank"
"Void the invoice successfully"
"confirm"
"Store Phone"
"""

//let sA = s1.components(separatedBy: "\n")
//let sB = s2.components(separatedBy: "\n")
//if sA.count != sB.count {
//    print("ERROR")
//} else {
//    for i in 0..<sA.count {
//        print(sA[i] + " = " + sB[i] + ";")
//    }
//}


let a = ListNode(5)
a.next = ListNode(6)
a.next!.next = ListNode(4)


let b = ListNode(2)
b.next = ListNode(1)
b.next!.next = ListNode(3)
b.next!.next!.next = b
//reverseList(a)

let root = TreeNode(1)
let left = TreeNode(2)
let right = TreeNode(3)
root.left = left
root.right = right
right.left = TreeNode(4)
right.right = TreeNode(5)

right.left!.left = TreeNode(6)
right.left!.right = TreeNode(7)

print(grayCode(2))
