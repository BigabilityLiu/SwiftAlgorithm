//
//  main.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/4/3.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation
/*
let s1 =
"""
"收款连结"
"付款连结"
"付款金额"
"当前状态"
"门店名称"
"门店编号"
"交易时间"
"交易类型"
"交易卡号"
"商品内容"
"留言"
"与"
"《ume商户会员使用协议》"
"《商户会员隐私协议》"
"请先阅读并同意协议后，方能成为注册会员！"
"同意"
"该订单无需开立发票"
"请安装Line APP"
"分享到"
"复制成功"
"""
let s2 =
"""
"收款連結"
"付款連結"
"付款金額"
"當前狀態"
"門店名稱"
"門店編號"
"交易時間"
"交易類型"
"交易卡號"
"商品內容"
"留言"
"與"
"《ume商戶會員使用協議》"
"《商戶會員隱私協議》"
"請先閱讀並同意協定後，方能成為註冊會員！"
"同意"
"該訂單無需開立發票"
"請安裝Line APP"
"分享到"
"複製成功"
"""
let sA = s1.components(separatedBy: "\n")
let sB = s2.components(separatedBy: "\n")
if sA.count != sB.count {
    print("ERROR")
} else {
    for i in 0..<sA.count {
        print(sA[i] + " = " + sB[i] + ";")
    }
}
*/

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

print(permute([5,4,6,2]))
