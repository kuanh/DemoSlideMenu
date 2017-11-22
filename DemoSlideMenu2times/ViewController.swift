//
//  ViewController.swift
//  DemoSlideMenu2times
//
//  Created by KuAnh on 20/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var btnMenuHideShow: UIBarButtonItem!
    
    var selectMenu = true
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func HideShowMenuTapped(_ sender: UIBarButtonItem) {
        if (selectMenu) {
            UIView.animate(withDuration: 2, animations: {self.menuView.frame.origin.y += 464}, completion: nil)
        } else {
            UIView.animate(withDuration: 3, animations: {self.menuView.frame.origin.y -= 464}, completion: nil)
        }
        selectMenu = !selectMenu
    }
    
}

