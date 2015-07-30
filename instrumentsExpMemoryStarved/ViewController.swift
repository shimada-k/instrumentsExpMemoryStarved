//
//  ViewController.swift
//  instrumentsExpMemoryStarved
//
//  Created by 島田克弥 on 2015/07/29.
//  Copyright (c) 2015年 shimada-k. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allocSize:Int = 20 * 1024 * 1024    // 20MB

    func getRandomNumber(cnt:Int) -> Int{
        var result:Int
        result = Int(arc4random() % UInt32(cnt))
        return result
    }
    
    @IBAction func btnStart(sender: AnyObject) {

        var arr:[Int] = [Int](count: allocSize, repeatedValue:0)
        
        while true {
            let random:Int = getRandomNumber(allocSize)
            arr[Int(random)] = Int(1)
        }

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

