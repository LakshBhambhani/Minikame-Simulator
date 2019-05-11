//
//  SecondViewController.swift
//  Swiffee
//
//  Created by Laksh Bhambhani on 4/30/19.
//  Copyright © 2019 Laksh Bhambhani. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController, WKUIDelegate {
    let IDE = UITextView()
    let run = UIButton()
    
    var webView: WKWebView!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .init(x: 1000, y: 1000, width: 0, height: 0), configuration: webConfiguration)
        webView.uiDelegate = self
        
        self.view.addSubview(IDE)
        self.view.addSubview(run)
        
        IDE.text = ""
        IDE.textColor = UIColor.black
        IDE.translatesAutoresizingMaskIntoConstraints = false
        IDE.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        IDE.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        IDE.topAnchor.constraint(equalTo: run.bottomAnchor, constant: 16).isActive = true
        IDE.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        IDE.heightAnchor.constraint(equalToConstant: 100).isActive = true
        IDE.widthAnchor.constraint(equalToConstant: 100).isActive = true
        IDE.heightAnchor.constraint(equalToConstant: 100).isActive = true

        let customFont:UIFont = UIFont.init(name: (textField.font?.fontName)!, size: 25.0)!
        IDE.font = customFont
        
        run.setTitle("Run", for: .normal)
        run.setTitleColor(UIColor.blue, for: .normal)
        run.translatesAutoresizingMaskIntoConstraints = false
        run.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        run.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        run.topAnchor.constraint(equalTo: textField.topAnchor, constant: 40).isActive = true
        run.bottomAnchor.constraint(equalTo: IDE.topAnchor, constant: 8).isActive = true
        run.widthAnchor.constraint(equalToConstant: 100).isActive = true
        run.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    @objc func runAction(sender: UIButton!) {
        print("Run Clicked")
        let url = URL(string: textField.text! + "/run");
        let request = URLRequest(url: url!);
        webView.load(request);
        print(url)
    }



}

