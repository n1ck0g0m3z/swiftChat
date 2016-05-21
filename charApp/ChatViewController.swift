//
//  ChatViewController.swift
//  charApp
//
//  Created by Student on 2016/05/21.
//  Copyright © 2016年 N1ck0. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController{
    
    
    @IBOutlet weak var txtField: UITextField!
    
    var messageList = [
        "クリス: 石垣はPUTOですね！！",
        "三浦: そうだね！！",
        "クリス: 君も知ってたの？",
        "三浦: 当たり前のことだよ！！",
        "クリス: ww",
        "三浦: 爆笑",
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func sendButton(sender: UIButton) {
        let message = txtField.text ?? ""
        messageList.append(message)
        tableView.reloadData()
    }
}

extension ChatViewController: UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let num = indexPath.row
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "chatCell")
        cell.textLabel?.text = messageList[num]
        return cell
    }
}