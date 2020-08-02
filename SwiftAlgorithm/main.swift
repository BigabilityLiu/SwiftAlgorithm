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
"获取优惠券成功"
"门店ID"
"商品条码需在22位以内"
"会员等级名称不得大于16个字元"
"超级管理员不可更改职级"
"*该手机号已是手机会员但还未成为门店会员，新增此会员时，等级和备注外其他资料不可编辑"
"商品名称不能多于12位中文或24位英文"
"扫码支付(境内交易)"
"LINE境外消费"
"所有"
"*除会员等级和备注外其他资料不可编辑"
"""
let s2 =
"""
"獲取優惠券成功"
"門店ID"
"商品條碼需在22位以內"
"會員等級名稱不得大於16個字元"
"超級管理員不可更改職級"
"*該手機號已是手機會員但還未成為門店會員，新增此會員時，等級和備註外其他資料不可編輯"
"商品名稱不能多於12位中文或24位英文"
"掃碼支付(境內交易)"
"LINE境外消費"
"所有"
"*除會員等級和備註外其他資料不可編輯"
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
//reverseList(a)

let root = TreeNode(5)
let left = TreeNode(6)
let right = TreeNode(4)
root.left = left
root.right = right
left.left = TreeNode(4)
left.right = TreeNode(5)

let c = ListNode(7)
a.next = c
b.next = c


print(topKFrequent([1,1,2,2,3,3], 2))
