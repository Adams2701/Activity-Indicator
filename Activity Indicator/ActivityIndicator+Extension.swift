//
//  ActivityIndicator+Extension.swift
//  Activity Indicator
//
//  Created by MAC on 16/03/2022.
//  Copyright © 2022 MAC. All rights reserved.
//

import UIKit


fileprivate var aView : UIView?

extension UIViewController {
    //acyivity 1 is simple loader with a timmer
    func showLoader(){
        aView = UIView(frame: self.view.bounds)
        aView?.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)

        let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
        activityIndicator.center = aView!.center
        activityIndicator.startAnimating()
        aView?.addSubview(activityIndicator)
        self.view.addSubview(aView!)
        Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (tim) in
            self.removeLoader()
        }
    }

    func removeLoader() {
        aView?.removeFromSuperview()
        aView = nil
    }
    
    
    // activity with an alert sheet and maintreading
    
    func loader() -> UIAlertController{
        let alert = UIAlertController(title: nil, message: "please ....", preferredStyle: .alert)
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.large
        loadingIndicator.startAnimating()
        alert.view.addSubview(loadingIndicator)
        present(alert, animated: true, completion: nil)
        
        
        return alert
        
    }
    
    func stopLoader(loader : UIAlertController) {
        DispatchQueue.main.async {
            loader.dismiss(animated: true, completion: nil)
        }
    }
}

