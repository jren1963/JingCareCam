//
//  FirstViewController.swift
//  JingCareCam
//
//  Created by Bobby Ren on 5/19/15.
//  Copyright (c) 2015 Jingqing Ren. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var messageParameters: [JingCareCamModel]? // declare an array of JingCareCamModel objects
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // create message array (allocate an array of JingCareCamModels)
        self.messageParameters = [JingCareCamModel]()
        
        // simulate a web call and populate messageParameters
        self.requestMessagesFromAPI()
    }

    func requestMessagesFromAPI() {
        // response is usually returned by the API as a dictionary
        let response = ["user": "Bobby", "title": "This is a title", "message": "this is the message body"]
        
        // parse the response values out
        // the ! means it has to exist. If we try to reference something that doesn't exist, it will crash
        let user: String = response["user"]!
        let title: String = response["title"]!
        let message: String = response["message"]!
        
        // create a model instance
        let messageModel = JingCareCamModel(user: user, title: title, message: message)
        
        // store the model instance in our array for use later
        self.messageParameters!.append(messageModel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation
    // this happens when the user clicks the button. The segue from the button is called "GoToMessage"
    // and will open a ViewController

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // the segue is the arrow pointing from FirstViewController to ViewController in the storyboard.
        // each segue can have an identifier so you know which one is being called
        // the segue "GoToMessage" is called when the button is clicked
        if segue.identifier == "GoToMessage" {
            // get an instance of ViewController
            let controller = segue.destinationViewController as? ViewController
            let message: JingCareCamModel = self.messageParameters![0]
            controller!.populateWithMessage(message)
        }
        // Pass the selected object to the new view controller.
    }

}
