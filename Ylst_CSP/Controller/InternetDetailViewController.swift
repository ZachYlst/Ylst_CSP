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
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view
    }
    
    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    private func setup() -> Void
}
