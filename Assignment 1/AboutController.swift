//
//  AboutController.swift
//  Assignment 1
//
//  Created by Student on 2019-01-23.
//  Copyright © 2019 Liam Quinn. All rights reserved.
//

import UIKit
import WebKit

class AboutController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.url(forResource: "BullsEye",
                                     withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
