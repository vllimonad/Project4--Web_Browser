//
//  ViewController.swift
//  project4
//
//  Created by Vlad Klunduk on 04/08/2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

