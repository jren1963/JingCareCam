//
//  ViewController.swift
//  JingCareCam
//
//  Created by Jingqing Ren on 5/18/15.
//  Copyright (c) 2015 Jingqing Ren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var titleLabel : UILabel!
    @IBOutlet var messageTextView : UITextView!
    
    @IBAction func sendTapped(sender : AnyObject) {
        
    }
    @IBAction func cancelTapped(sender : AnyObject) {
        
    }
    @IBAction func viewTapped(sender : AnyObject) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let careCam = JingCareCamModel(user: "John", title: "Remind John to enter his weight this morning", message:  "John, Don't forget to enter your weight this morning. It would be great if you did it before lunch. Thanks!")
    
    func refreshUI() {
        titleLabel.text = careCam.title
        messageTextView.text = careCam.message
        
    }

}

