
import UIKit

struct CalculateLogic {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        //        if let safeBMI = bmi {
        //            let bmiTo1DecimalPlace = String(format: "%.1f", safeBMI)
        //            return bmiTo1DecimalPlace
        //        } else {3
        //            return "0.0"
        //        }
    }
    
    mutating func calculateBMI(height : Float, weight : Float) {
        //let bmiValue = weight / powf(height, 2) -> pow는 제곱을 할 때 사용
        let bmiValue = weight / (height * height)
        // BMI 구간별 내용
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies" , color: UIColor.cyan)
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle" , color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!" , color: UIColor.red)
        }
    }
    // 정해진 구간의 조언 값 얻기
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    // 정해진 구간의 백그라운드 색 얻기
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
}
