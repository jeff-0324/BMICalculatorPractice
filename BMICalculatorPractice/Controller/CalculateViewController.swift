//
//  ViewController.swift
//  BMICalculatorPractice
//
//  Created by jae hoon lee on 2023/09/04.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculateLogic = CalculateLogic()

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heigtLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setUI()
    }
    
    func setUI() {
        heightSlider.value = 1.5
        weightSlider.value = 100
    }
    
    //키 슬라이더 값
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let sliderValueChange = sender.value
        let value = String(format: "%.2f", sliderValueChange)
        heigtLabel.text = "\(value)m"
    }
    //몸무게 슬라이더 값
    @IBAction func weightSliderChange(_ sender: UISlider) {
            let sliderValueChange = sender.value
        //let value = String("\(Int(sliderValueChange)) kg")
            let value = String(format: "%.0f", sliderValueChange)
            weightLabel.text = "\(value)kg"
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
       
        calculateLogic.calculateBMI(height : height, weight : weight)
        self.performSegue(withIdentifier: "goToResult", sender: self )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BMIValue = calculateLogic.getBMIValue()
            destinationVC.BMIAdvice = calculateLogic.getAdvice()
            destinationVC.BMIColor = calculateLogic.getColor()
        }
    }
    
}

