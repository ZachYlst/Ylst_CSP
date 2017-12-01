//
//  InternetDetailViewController.swift
//  Ylst_CSP
//
//  Created by Ylst, Zachary on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import WebKit

class InternetDetailViewController: UIViewController
{
    //MARK: GUI controls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    var detailAddress: String?
    {
        //MARK: Update the detail when a value is changed
        didSet
        {
            configureDetailView()
        }
    }
    
    var detailText: String?
    {
        //MARK: Update the detail view when a value is changed
        didSet
        {
            configureDetailView()
        }
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        configureDetailView()
        // Do any additional setup after loading the view
    }
    
    private func configureDetailView() -> Void
    {
        if detailAddress != nil
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: detailAddress!)
                let currentWebRequest = URLRequest(url: currentURL!)
                currentWebView.load(currentWebRequest)
            }
        }
        else
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: "https://www.cnn.com")
                currentWebView.load(URLRequest(url: currentURL!))
            }
        }
        
        if detailText != nil
        {
            if let currentText = textView
            {
                currentText.text = detailText
            }
        }
        else
        {
            if let currentText = textView
            {
                currentText.text = "Zachary's CSP app internet screen"
            }
        }
    }
    
    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    private func setup() -> Void
    {
        
    }
}
