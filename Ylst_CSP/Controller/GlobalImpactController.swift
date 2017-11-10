//
//  GlobalImpactController.swift
//  Ylst_CSP
//
//  Created by Ylst, Zachary on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class GlobalImpactController: UIViewController
{
    override public func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var problemButton: UILabel!
    func problemButtonLabel()
    {
        self.problemButton.text = "a"
    }
    @IBOutlet weak var personalButton: UILabel!
    func personalButtonLabel()
    {
        self.personalButton.text = "a"
    }
}
