//
//  Lab3ViewController.swift
//  Vinisha_govindharaj_MT_8938714
//
//  Created by user240738 on 3/11/24.
//

import UIKit

class Lab3ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var infoTextView: UITextView!
    
    
    @IBOutlet weak var invisibleLable: UILabel!
    
    @IBAction func addButton(_ sender: Any) {
        displayUserInfo()
    }
    
    
    @IBAction func submitButton(_ sender: Any) {
        
        if let firstName = firstNameTextField.text,
           let lastName = lastNameTextField.text,
           let country = countryTextField.text,
           let age = ageTextField.text,
           !firstName.isEmpty,
           !lastName.isEmpty,
           !country.isEmpty,
           !age.isEmpty {
            invisibleLable.text = "Sucessfully submitted"
            }
        else
        {
            invisibleLable.text = "Complete the missing Info"
            invisibleLable.isHidden = false
            
        }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        countryTextField.text = ""
        ageTextField.text = ""
        infoTextView.text = ""
        invisibleLable.isHidden = true
    }
    private func displayUserInfo()
    {
        let userInfo = """
                       Full Name: \(firstNameTextField.text ?? "") \(lastNameTextField.text ?? "")
                       Country: \(countryTextField.text ?? "")
                       Age: \(ageTextField.text ?? "")
                      """
        infoTextView.text = userInfo
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
