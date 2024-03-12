//
//  Lab2ViewController.swift
//  Vinisha_govindharaj_MT_8938714
//
//  Created by user240738 on 3/11/24.
//

import UIKit

class Lab2ViewController: UIViewController {
    var screenNumber:Int = 0;
    var step:Int = 1 ;

    @IBOutlet weak var textNumber: UILabel!
   
    @IBAction func Step(_ sender: Any) {
        step = step + 1;
    }
    
    
    @IBAction func Reset(_ sender: Any) {
        screenNumber = 0;
        step = 1;
        textNumber.text = String(screenNumber);
    }
    
    
    @IBAction func buttonInc(_ sender: Any) {
        if(step == 2)
        {
            screenNumber += 2;
        }
        else
        {
            screenNumber += 1;
        }
        textNumber.text = String(screenNumber);
    }
    
    
        
    
    
    
    
    @IBAction func buttonDec(_ sender: Any) {
        if(step == 2)
        {
            screenNumber -= 2;
        }
        else
        {
            screenNumber -= 1;
        }
        textNumber.text = String(screenNumber);
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
