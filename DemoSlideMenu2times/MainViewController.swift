//
//  MainViewController.swift
//  DemoSlideMenu2times
//
//  Created by KuAnh on 21/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var slideMenu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openSlideMenu(_ sender: UIBarButtonItem) {
        NotificationCenter.default.post(name: NotificationKey.menuClick, object: nil)
    }

}

struct NotificationKey {
    static let menuClick = NSNotification.Name.init("menuClick")
}
