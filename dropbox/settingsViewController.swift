//
//  settingsViewController.swift
//  dropbox
//
//  Created by matt hunter on 9/19/15.
//  Copyright © 2015 mh. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var settingsImageView: UIImageView!
    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var signoutButton: UIButton!
    
    @IBAction func signOutAction(sender: AnyObject) {
        
        let secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("welcomeViewController") as! welcomeViewController
        self.navigationController?.presentViewController(secondViewController, animated: true, completion: nil)
        
        // self.navigationController?.pushViewController(secondViewController, animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScrollView.contentSize = CGSize(width: 375, height: 1000)
        settingsScrollView.contentSize = settingsImageView.bounds.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
