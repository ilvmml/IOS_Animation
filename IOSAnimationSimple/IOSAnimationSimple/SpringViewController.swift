//
//  SpringViewController.swift
//  IOSAnimationSimple
//
//  Created by 陈宁华 on 15/5/29.
//  Copyright (c) 2015年 cnh. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {

    @IBOutlet weak var SpringGreenSquare: UIView!
    
    @IBOutlet weak var SpringRedSquare: UIView!
    
    @IBOutlet weak var SpringBlueSquare: UIView!
    
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
            self.SpringGreenSquare.center.x = self.view.bounds.width - self.SpringGreenSquare.center.x
        })
        
        UIView.animateWithDuration(5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: nil, animations: {
            self.SpringRedSquare.center.x = self.view.bounds.width - self.SpringRedSquare.center.x
        }, completion: nil)
        
        UIView.animateWithDuration(5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 1, options: nil, animations: {
            self.SpringBlueSquare.center.x = self.view.bounds.width - self.SpringBlueSquare.center.x
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
