//
//  ResultViewController.swift
//  BMICalculatorPractice
//
//  Created by jae hoon lee on 2023/09/05.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var BMIValue : String?
    var BMIAdvice : String?
    var BMIColor : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        resultLabel.text = BMIValue!
        adviceLabel.text = BMIAdvice!
        view.backgroundColor = BMIColor!
    }
    
    @IBAction func recalculateButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
        
        
        
    }
    
    

}
