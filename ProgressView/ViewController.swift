//
//  ViewController.swift
//  ProgressView
//
//  Created by zhoucan on 2017/3/21.
//  Copyright © 2017年 Zhoucan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let v:XZProgressView = XZProgressView()
        v.percent = 0.2 //调整占比
        self.view.addSubview(v)
        v.vHeight = 20 //调整圆角
        v.xzlengthColor = UIColor.yellow
        v.xzbackColor = UIColor.red
        v.snp.makeConstraints { (make) in
            make.left.equalTo(30)
            make.top.equalTo(90)
            make.size.equalTo(CGSize(width: 200, height: 20))
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

