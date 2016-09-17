//
//  ViewController.swift
//  ProtocalDelegateDemo
//
//  Created by Kvana Dev Ipod on 23/08/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DataEnterDelegate {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func userDidEnterData(info: NSString) {
     textLabel.text = info as String
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showData"{
            let secondVC:SecondViewController = segue.destinationViewController as! SecondViewController
            secondVC.delegate = self
    }
        
    }

}
