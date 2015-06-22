//
//  ScaleViewController.swift
//  IOSAnimationSimple
//
//  Created by 陈宁华 on 15/5/27.
//  Copyright (c) 2015年 cnh. All rights reserved.
//

import UIKit

class ScaleViewController: UIViewController {

    @IBOutlet weak var ScaleBlueSquare: UIView!
    
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
            self.ScaleBlueSquare.transform = CGAffineTransformMakeScale(0.3, 0.3)
        })
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
