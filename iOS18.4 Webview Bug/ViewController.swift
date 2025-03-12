//
//  ViewController.swift
//  iOS18.4 Webview Bug
//
//  Created on 3/12/25.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tap on a color"

        webView = WKWebView(frame: view.bounds)
        webView.navigationDelegate = self

        webView.scrollView.contentInset = .init(top: 75, left: 0, bottom: 40, right: 0)
                
        view.addSubview(webView)
        
        if let filePath = Bundle.main.path(forResource: "index", ofType: "html") {
            let fileURL = URL(fileURLWithPath: filePath)
            let request = URLRequest(url: fileURL)
            webView.load(request)
        }
    }
}

