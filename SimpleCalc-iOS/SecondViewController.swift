//
//  SecondViewController.swift
//  SimpleCalc-iOS
//
//  Created by Quan Nguyen on 4/23/17.
//  Copyright © 2017 Quan Nguyen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    public var history : [String] = [];
    override func viewDidLoad() {
        super.viewDidLoad()
        print(history);
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
