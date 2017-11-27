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
        setup()
    }
    
    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var planPicture: UIImageView!
    
    @IBOutlet weak var problemButton: UILabel!
    
    @IBOutlet weak var personalButton: UILabel!
    
    private func setup() -> Void
    {
        planPicture.image = UIImage(named: "")
        personalButton.text = "I haven't personally faced this issue in my own life, but have continually seen it occur with those around me."
        problemButton.text = "This problem must be addressed, as America is continually striving for perfect equality. Therefore, inequality in American income should be looked into."
    }
}
