//
//  ViewController.swift
//  Activity Indicator
//
//  Created by MAC on 16/03/2022.
//  Copyright © 2022 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidAppear(true)

        //call this where u intended to call it not neccessarily under contoller life cycle
        
        self.showLoader()
             Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { (tim) in
                 print("done ade")
             }
     

        let loader = self.loader()
        DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
            
            self.stopLoader(loader: loader)
            
        }
    }


}

