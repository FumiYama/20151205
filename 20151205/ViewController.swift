//
//  ViewController.swift
//  20151205
//
//  Created by Fumiya Yamanaka on 2015/12/05.
//  Copyright © 2015年 Fumiya Yamanaka. All rights reserved.
//

import UIKit

struct UIScreenUtil {
    static func bounds() -> CGRect {
        return UIScreen.mainScreen().bounds
    }
    static func sw_screenWidth() -> Float {
        return Float(UIScreen.mainScreen().bounds.size.width)
    }
    static func sh_screenHeight() -> Float {
        return Float(UIScreen.mainScreen().bounds.size.height)
    }
}

class ViewController: UIViewController {
    
    
    
    let rect = UIScreenUtil.bounds()
    let gw_gamenWidth:CGFloat = CGFloat(UIScreenUtil.sw_screenWidth())
    let gh_gamenHeight:CGFloat = CGFloat(UIScreenUtil.sh_screenHeight())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let testDraw = TestDraw(frame: CGRectMake(0, 0, UIScreenUtil.bounds().width, UIScreenUtil.bounds().height))
        testDraw.opaque = false // opaque属性にfalseを設定することで、背景透過を許可する。
        testDraw.backgroundColor = UIColor.clearColor() // 透明色
        
        
        let pv_parentView = UIView(frame: CGRectMake(0, 0, CGFloat(UIScreenUtil.sw_screenWidth()), CGFloat(UIScreenUtil.sh_screenHeight())))
//        pv_parentView.backgroundColor = UIColor.greenColor()
//        pv_parentView.alpha = 0.2
        pv_parentView.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.2)
        pv_parentView.layer.masksToBounds = true
        pv_parentView.layer.cornerRadius = 30 //viewのかどを丸く
        
        let cv_childView = UIView(frame: CGRectMake(0, CGFloat(UIScreenUtil.sh_screenHeight()/2), CGFloat(UIScreenUtil.sw_screenWidth()/2), CGFloat(UIScreenUtil.sh_screenHeight()/2)))
        cv_childView.backgroundColor = UIColor(hue: 0.6, saturation: 1, brightness: 1, alpha: 0.8)

        
        cv_childView.addSubview(testDraw)
        pv_parentView.addSubview(cv_childView)
        self.view.addSubview(pv_parentView)
        
        
        
        let label:UILabel = UILabel(frame:CGRectMake(0, 0, 100, 100))
//        label.addMotionEffect(??)
//        label.addConstraint(constraint: NSLayoutConstraint)
//        label.addLayoutGuide(<#T##layoutGuide: UILayoutGuide##UILayoutGuide#>)
//        label.alignmentRectForFrame(<#T##frame: CGRect##CGRect#>)
//        label.alpha = CGFloat(0.5)
//        label.animationDidStart(<#T##anim: CAAnimation##CAAnimation#>)
        label.autoresizingMask = UIViewAutoresizing.FlexibleBottomMargin
        label.text = "label"
        label.textColor = UIColor.whiteColor()
//        label.textRectForBounds(CGRect(x: 10, y: 10, width: 10, height: 10), limitedToNumberOfLines: 3)
        label.textAlignment = NSTextAlignment.Center
        label.backgroundColor = UIColor.redColor()
        label.layer.position = CGPoint(x: gw_gamenWidth/2,y: gh_gamenHeight/4)
        label.layer.zPosition = 1
        label.layer.masksToBounds = true //
        label.layer.cornerRadius = 20
        label.layer.borderColor = UIColor.blackColor().CGColor
        label.layer.borderWidth = 3.0
        label.shadowColor = UIColor.brownColor()
        label.layer.shadowColor = UIColor.yellowColor().CGColor
        label.layer.shadowRadius = 10
        
        
        pv_parentView.addSubview(label)
        
        let label2:UILabel = UILabel(frame: CGRectMake(gw_gamenWidth/2, 0, 100, 100))
//        label2.layer.position = CGPoint(x: gw_gamenWidth/3,y: gh_gamenHeight/3)
        label2.backgroundColor = UIColor(red: 1.0, green: 0.8, blue: 1.0, alpha: 1.0)
        label2.text = "label2"
        label2.textAlignment = NSTextAlignment.Center
        label2.layer.zPosition = 1
//        label2.alpha = CGFloat(0.6)
        
        pv_parentView.addSubview(label2)
        
        let button:UIButton! = UIButton(frame: CGRect(x: gw_gamenWidth/3, y: gh_gamenHeight/3, width: 100, height: 100))
        button.setTitle("button", forState: .Normal)
//        button.backgroundRectForBounds(0.5)
        button.backgroundColor = UIColor(white: 0.5, alpha: 1.0)
        button.layer.shadowOpacity = 0.5 //shadowの透明度
        button.layer.shadowOffset = CGSizeMake(5, 5) // shadowの大きさ, xy方向に伸びる
        button.layer.shadowRadius = 10 // 影のぼかし(blur)の効果に影響する値
        button.layer.shadowColor = UIColor.redColor().CGColor //影色
        
        pv_parentView.addSubview(button)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

