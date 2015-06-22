//
//  RepeatViewController.swift
//  IOSAnimationSimple
//
//  Created by 陈宁华 on 15/5/29.
//  Copyright (c) 2015年 cnh. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController {

    @IBOutlet weak var RepeatgreenSquare: UIView!
    
    @IBOutlet weak var RepeatredSquare: UIView!
    
    @IBOutlet weak var RepeatblueSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        UIView.animateWithDuration(1, animations: {
            self.RepeatgreenSquare.center.x =  self.view.bounds.width - self.RepeatgreenSquare.center.x
            
        })
        
        UIView.animateWithDuration(1, delay: 0, options: .Repeat, animations: {
            self.RepeatredSquare.center.x = self.view.bounds.width - self.RepeatredSquare.center.x
        }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0, options: .Repeat | .Autoreverse, animations: {
            self.RepeatblueSquare.center.x = self.view.bounds.width - self.RepeatblueSquare.center.x
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
