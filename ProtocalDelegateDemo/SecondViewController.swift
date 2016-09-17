//
//  SecondViewController.swift
//  ProtocalDelegateDemo
//
//  Created by Kvana Dev Ipod on 23/08/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import UIKit
protocol DataEnterDelegate{
        func userDidEnterData(info:NSString)
   }
class SecondViewController: UIViewController {
    var delegate:DataEnterDelegate? = nil

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showData(sender: AnyObject) {
        delegate?.userDidEnterData(textField.text!)
        self.navigationController?.popViewControllerAnimated(true)
        
    }


}
