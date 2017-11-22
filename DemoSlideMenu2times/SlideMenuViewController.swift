//
//  BottomSlideMenuViewController.swift
//  DemoSlideMenu2times
//
//  Created by KuAnh on 20/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class SlideMenuViewController: UIViewController {

    @IBOutlet weak var menuChildView: UIView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var leadingView: NSLayoutConstraint!
    @IBOutlet weak var corverButton: UIButton!
    
    var selectMenu: Bool = true {
        didSet {
            if selectMenu {
                openSlideMenu()
                self.corverButton.isEnabled = true
            } else {
                closeSlideMenu()
                self.corverButton.isEnabled = false
            }
            UIView.animate(withDuration: 0.35, animations: {
                self.view.layoutIfNeeded()
            })
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.leadingView.constant = -250
        self.corverButton.isEnabled = false
        registerNotification()
    }
    
    func openSlideMenu(){
        self.menuChildView.clipsToBounds = false
        self.leadingView.constant = 0
        self.corverButton.alpha = 0.5
        self.corverButton.backgroundColor = UIColor.black
    }
    
    func closeSlideMenu() {
        self.leadingView.constant = -250
        self.infoView.alpha = 1
        self.corverButton.backgroundColor = UIColor.clear
    }
    
    func registerNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(onClickCorverButton), name: NotificationKey.menuClick, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onClickCorverButton() {
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
