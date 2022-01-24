//
//  ViewController.swift
//  HTMLParsing
//
//  Created by MacBook on 24.01.2022.
//

import UIKit
import HTMLKit
import WebKit

class HTMLViewController: UIViewController {
    
    // Create a computed property
    private let webView: WKWebView = {
        let webView = WKWebView(frame: .zero)
        return webView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(webView)
        webView.navigationDelegate = self
        webView.frame = view.bounds
        
        getURL()

    }
    
    func getURL() {
        guard let url = URL(string: Constants.url) else { return }
        webView.load(URLRequest(url: url))
    }


}
// MARK:- WKNavigationDelegate method
extension HTMLViewController: WKNavigationDelegate {
    
    // Did finish navigation
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        // Parsing
    }
    
}
