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
    @IBOutlet var profile: UIImageView!
    
    var messageModel: JingCareCamModel?
    
    @IBAction func sendTapped(sender : AnyObject) {
        
    }
    @IBAction func cancelTapped(sender : AnyObject) {
        
    }
    @IBAction func viewTapped(sender : AnyObject) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if self.messageModel != nil {
            titleLabel.text = self.messageModel!.title
            messageTextView.text = self.messageModel!.message
        }
        
        self.profile.layer.cornerRadius = self.profile.frame.size.width / 2
        self.profile.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func populateWithMessage(message: JingCareCamModel) {
        // populateWithMessage will get called before viewDidLoad
        // we just save the model
        self.messageModel = message
    }
    
}

