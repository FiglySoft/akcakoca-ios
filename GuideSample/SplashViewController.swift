//
//  SplashViewController.swift
//  Akçakoca Rehberi
//
//  Created by Servet Can Asutay on 10/01/16.
//  Copyright © 2016 Servet Can Asutay. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let timer = NSTimer.scheduledTimerWithTimeInterval(
            2, target: self, selector: Selector("show"), userInfo: nil, repeats: false
        )
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func show() {
        self.performSegueWithIdentifier("gotoMainMenu", sender: self)
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
