//
//  AlgorithmController.swift
//  Ylst_CSP
//
//  Created by Ylst, Zachary on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AlgorithmController: UIViewController
{
    @IBOutlet weak var soundPhoto: UIImageView!
    
    @IBOutlet weak var algorithmList: UILabel!
    
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps: [String] = []
        
        let algorithm: String = "These are the steps to creating a Swift/Java project:"
        let stepOne: String = "First, open up either Xcode or Eclipse"
        let stepTwo: String = "Second, create the project, followed by naming and saving it"
        let stepThree: String = "Third, open up Github"
        let stepFour: String = "Fourth, create a new repository for your project"
        let stepFive: String = "Fifth, undo the initial commit and replace it with your own"
        
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmList.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet = "👏"
            let formattedStep: String = "\n\(bullet) \(step)"
            let attributedStringStep: NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmList.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
    
        return paragraphStyle
    }

    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
    }
    
    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
