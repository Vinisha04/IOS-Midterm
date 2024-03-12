//
//  CalculatorViewController.swift
//  Vinisha_govindharaj_MT_8938714
//
//  Created by user240738 on 3/10/24.
//

import UIKit

class CalculatorViewController: UIViewController {

    
    @IBOutlet weak var inputFieldA: UITextField!
    
    @IBOutlet weak var inputFieldB: UITextField!
    
    @IBOutlet weak var inputFieldC: UITextField!
    
    @IBOutlet weak var resultField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
           inputFieldA.keyboardType = .numberPad
           inputFieldB.keyboardType = .numberPad
           inputFieldC.keyboardType = .numberPad

           hideKeyboardWhenTappedAround()
    // Do any additional setup after loading the view.
        
    }
    func hideKeyboardWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGesture.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGesture)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
        @IBAction func calculateButton(_ sender: Any) {
            var a: Double?
            var b: Double?
            var c: Double?
            
            if let aValue = Double(inputFieldA.text!) {
                a = aValue
            }
            else {
                resultField.text = "The value you entered for A is invalid."
                return
            }
            
            if let bValue = Double(inputFieldB.text!) {
                b = bValue
            }
            else {
                resultField.text = "The value you entered for B is invalid."
                return
            }
            
            if let cValue = Double(inputFieldC.text!) {
                c = cValue
            } else {
                resultField.text = "The value you entered for C is invalid."
                return
            }
            
            // At this point, a, b, and c are guaranteed to have values
            let results = solveQuadraticEquation(a: a!, b: b!, c: c!)
            displayResults(results)
    }
    
    
    
    @IBAction func clearButton(_ sender: Any) {
       inputFieldA.text = ""
       inputFieldB.text = ""
       inputFieldC.text = ""
       resultField.text = "Enter a value for A, B, and C to find X."
        
    }
    
    
    func solveQuadraticEquation(a: Double, b: Double, c: Double) -> (x1: Double?, x2: Double?) {
           let discriminant = b*b - 4*a*c
           if discriminant > 0 {
               return ((-b + sqrt(discriminant)) / (2*a), (-b - sqrt(discriminant)) / (2*a))
           } else if discriminant == 0 {
               return (-b / (2*a), nil)
           } else {
               return (nil, nil)
           }
       }
    
    func displayResults(_ results: (x1: Double?, x2: Double?)) {
           if let x1 = results.x1, let x2 = results.x2 {
               resultField.text = "There are two values for X: \(x1) and \(x2)"
           } else if let x1 = results.x1 {
               resultField.text = "There is only one value for X: \(x1)"
           } else {
               resultField.text = "There are no results since the discriminant is less than zero."
           }
       }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
