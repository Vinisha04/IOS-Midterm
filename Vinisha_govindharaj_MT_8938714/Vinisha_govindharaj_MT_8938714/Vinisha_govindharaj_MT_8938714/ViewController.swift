//
//  ViewController.swift
//  Vinisha_govindharaj_MT_8938714
//
//  Created by user240738 on 3/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    let initialCity = UIImage(named: "Canada")
   
    let cityImages = [
        
        "calgary": UIImage(named: "Calgary"),
        
        "halifax": UIImage(named: "Halifax"),
        
        "montreal": UIImage(named: "Montreal"),
        
        "toronto": UIImage(named: "Toronto"),
        
        "vancouver": UIImage(named: "Vancouver"),
        
        "winnipeg": UIImage(named: "Winnipeg")
        
    ]
    
    let cityColors: [String: UIColor] = [
            "calgary": .blue,
            "halifax": .yellow,
            "montreal": .green,
            "toronto": .purple,
            "vancouver": .brown,
            "winnipeg": .red
        ]
    let defaultColor = UIColor(red: 155/255.0, green: 216/255.0, blue: 178/255.0, alpha: 1.0)
    
    
    @IBOutlet weak var citiesImageView: UIImageView!
    
    @IBOutlet weak var invisibleLabel: UILabel!
    
    @IBOutlet weak var userInputView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        citiesImageView?.image = initialCity
        invisibleLabel?.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func findCurrentCity(_ sender: Any) {
        let inputText = userInputView.text?.lowercased() ?? ""
        
        if let cityImage = cityImages[inputText] {
            invisibleLabel.isHidden = true
            
            citiesImageView.image=cityImage
            
            let cityColor = cityColors[inputText] ?? defaultColor
            view.backgroundColor = cityColor
            
        }
        else if inputText.isEmpty {
            citiesImageView.image=initialCity
            
            invisibleLabel.isHidden=false
            
            invisibleLabel.text="Please enter a city name"
            view.backgroundColor = defaultColor
            
        }
        else {
            
            citiesImageView.image=initialCity
            
            invisibleLabel.isHidden=false
            
            invisibleLabel.text="Not Found !"
            view.backgroundColor = defaultColor
        }
        
    }
    }
    

