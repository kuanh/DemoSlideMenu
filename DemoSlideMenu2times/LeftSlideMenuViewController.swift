//
//  LeftSlideMenuViewController.swift
//  DemoSlideMenu2times
//
//  Created by KuAnh on 20/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class LeftSlideMenuViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    var selectMenu = true
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hideShowSlideMenu(_ sender: UIBarButtonItem) {
        if (selectMenu) {
            UIView.animate(withDuration: 3, animations: {self.menuView.frame.origin.x -= 300
                
            })
        } else {
            UIView.animate(withDuration: 3, animations: {self.menuView.frame.origin.x += 300})
        }
        selectMenu = !selectMenu
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
