//
//  XZProgressView.swift
//  XingZao
//
//  Created by zhoucan on 2017/3/20.
//  Copyright © 2017年 Zhoucan. All rights reserved.
//

import UIKit
import Foundation
import SnapKit


/*
 
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
 
 
 
 */


class XZProgressView: UIView {
    
    var percent = 0.0//进度值
    
    

    var xzlengthColor = UIColor.orange{
     
        didSet{
         lengthView.backgroundColor = xzlengthColor
        }
    
    }
    
    var xzbackColor = UIColor.orange{
        
        didSet{
            backView.backgroundColor = xzbackColor
        }
        
    }
    
    /// 表面orangeView
    @IBOutlet weak var lengthView: UIView!
    
    /// grayView
    @IBOutlet weak var backView: UIView!
    
    let h:Double = 2.0
    
    
    /// view高度
    var vHeight:Double = 25.0 {
        
        didSet{
            let value = CGFloat(vHeight / h)
            backView.layer.cornerRadius = value
            lengthView.layer.cornerRadius = value
            
        }
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSubviews()
    }
    
    
    func instanceXZpro()->UIView{
    
      let bundle = Bundle(for: type(of: self))
     let  nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
    
    
    func setupSubviews()  {
        let view = instanceXZpro()
        addSubview(view)
      
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        backView.snp.makeConstraints { (make) in
            make.top.left.equalTo(0)
            make.size.equalTo(self.snp.size)
            
        }
        lengthView.snp.makeConstraints { (make) in
            make.left.top.bottom.equalTo(0)
            make.width.equalTo(backView.snp.width).multipliedBy(percent)
        }
    }
    
    
    
   

}
