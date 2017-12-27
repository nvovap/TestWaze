//
//  ViewController.swift
//  TestWaze
//
//  Created by Владимир Невинный on 27.12.2017.
//  Copyright © 2017 Владимир Невинный. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    func navigateToLatitude(_ latitude: Double, longitude: Double)  {
        
        
        
        if UIApplication.shared.canOpenURL(URL(string: "waze://")!) {
            
            if let urlStr = URL(string: "https://waze.com/ul?ll=\(latitude),\(longitude)&navigate=yes") {
                UIApplication.shared.open(urlStr, options: [:], completionHandler: nil)
            }
            
        } else {
            UIApplication.shared.open(URL(string: "http://itunes.apple.com/us/app/id323229106")!, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func onButton(_ sender: Any) {
        //45.6906304,-120.810983
        navigateToLatitude(47.838800000000006, longitude: 35.139567)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

