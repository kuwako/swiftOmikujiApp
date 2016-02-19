//
//  ViewController.swift
//  MyOmikujiApp
//
//  Created by 桑古　昌輝 on 2016/02/17.
//  Copyright © 2016年 桑古　昌輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLavel: UILabel!
    @IBAction func getOmikuji(sender: AnyObject) {
        let results = [
            "大吉",
            "吉",
            "中吉",
            "凶",
            "大凶"
        ]
        // 乱数を発生
        let random = arc4random_uniform(UInt32(results.count))
        
        if random == 0 {
            self.myLavel.textColor = UIColor.redColor()
        } else {
            self.myLavel.textColor = UIColor.blackColor()
        }
        
        // results[乱数]をmyLavelに表示
        self.myLavel.text = results[Int(random)]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

