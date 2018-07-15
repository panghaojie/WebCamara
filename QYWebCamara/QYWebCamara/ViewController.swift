//
//  ViewController.swift
//  QYWebCamara
//
//  Created by 乔羽 on 2018/7/15.
//  Copyright © 2018年 DevQiaoYu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseURL = URL.init(fileURLWithPath: Bundle.main.bundlePath)
        let path = Bundle.main.path(forResource: "webCamara", ofType: "html")
        if let html = try? String.init(contentsOfFile: path!, encoding: String.Encoding.utf8) {
            let webView = UIWebView(frame: UIScreen.main.bounds)
            webView.loadHTMLString(html, baseURL: baseURL)
            self.view.addSubview(webView)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

