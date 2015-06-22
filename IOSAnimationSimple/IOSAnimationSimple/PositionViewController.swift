//
//  PositionViewController.swift
//  IOSAnimationSimple
//
//  Created by 陈宁华 on 15/5/27.
//  Copyright (c) 2015年 cnh. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var greenSquare: UIView!
    
    @IBOutlet weak var redSquare: UIView!
    
    @IBOutlet weak var blueSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //在界面加载处理后再显示
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
        // 动画操作
        UIView.animateWithDuration(1, animations: {
            self.greenSquare.center.x =  self.view.bounds.width - self.greenSquare.center.x
        })
        
        // 延时 0.5 操作
        UIView.animateWithDuration(1, delay: 0.5, options: nil, animations: {
            self.redSquare.center.y =  self.view.bounds.height - self.redSquare.center.y
            }, completion: nil)
        
        // 延时 1.0 操作
        UIView.animateWithDuration(1, delay: 1, options: nil, animations: {
            self.blueSquare.center.x =  self.view.bounds.width - self.blueSquare.center.x
            self.blueSquare.center.y =  self.view.bounds.height - self.blueSquare.center.y
            }, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
