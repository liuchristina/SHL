//
//  OurViewController.swift
//  Songs and Hymns of Life
//
//  Created by Christina Liu on 3/4/16.
//  Copyright © 2016 Christina Liu. All rights reserved.
//

import UIKit

class OurViewController: UIViewController {

    
    @IBOutlet weak var menubutton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menubutton.target = self.revealViewController()
            menubutton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

        // Do any additional setup after loading the view.
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
