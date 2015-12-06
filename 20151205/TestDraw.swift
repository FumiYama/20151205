//
//  TestDraw.swift
//  20151205
//
//  Created by Fumiya Yamanaka on 2015/12/06.
//  Copyright © 2015年 Fumiya Yamanaka. All rights reserved.
//

import UIKit

class TestDraw: UIView {
    
//    override init(frame: CGRect) {
//        super.init(frame: CGRectZero)
//        self.backgroundColor = UIColor.greenColor()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    */
    override func drawRect(rect: CGRect) {
        // Drawing code
        self.backgroundColor = UIColor.greenColor()
        // 線
        let line = UIBezierPath()
        
        line.moveToPoint(CGPointMake(50, 50))
        line.addLineToPoint(CGPointMake(100, 100))
        UIColor.redColor().setStroke()
        line.lineWidth = 2
        
        line.stroke()
        
        // 三角形
        let tri = UIBezierPath() // UIBezierPath のインスタンス作成
        tri.moveToPoint(CGPointMake(30, 60))
        tri.addLineToPoint(CGPointMake(40, 30)) // 帰着点
        tri.addLineToPoint(CGPointMake(60, 28))
        tri.closePath() //線を結ぶ
        UIColor.redColor().setStroke()
        tri.lineWidth = 5
        tri.stroke() // 描画
        
        //楕円
        let oval = UIBezierPath(ovalInRect: CGRectMake(140, 90, 90, 140))
        UIColor.grayColor().setFill() //塗りつぶしの色設定
        oval.fill() // 内側の塗りつぶし
        UIColor.greenColor().setStroke() //stroke色の設定
        oval.lineWidth = 3
        oval.stroke()
        
        // 短形
        let rectangle = UIBezierPath(rect: CGRectMake(200, 70, 120, 90))
        UIColor.blueColor().setStroke()
        rectangle.lineWidth = 8
        rectangle.stroke()
        
        
        //角丸短形
        let roundRect = UIBezierPath(roundedRect: CGRectMake(50, 100, 110, 150), cornerRadius: 10)
        UIColor.yellowColor().setStroke()
        roundRect.lineWidth = 5
        roundRect.stroke()
        
        // 円弧
        let arc = UIBezierPath(arcCenter: CGPointMake(150, 170), radius: 85, startAngle: 0, endAngle: CGFloat(M_PI)*4/3, clockwise: true)
        let aColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        aColor.setStroke()
        arc.lineWidth = 10
        
        // 点線パターンのセット
        let dashPattern:[CGFloat] = [1, 4]
        arc.setLineDash(dashPattern, count: 2, phase: 0)
        arc.stroke()

        
    }
    

}
