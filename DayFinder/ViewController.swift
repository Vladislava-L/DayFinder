//
//  ViewController.swift
//  DayFinder
//
//  Created by l.vladislava on 02/02/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dayTextField: UITextField!
    
    @IBOutlet weak var monthTextField: UITextField!
    
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
   
    @IBOutlet weak var findButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("ViewContorller first lunch")
    }
    
    @IBAction func findWeekdayTapped(_ sender: Any) {
        print("find!!!!!")
        
//        calendar
        let calendar = Calendar.current
        
//        DateComponents()
        var dateComponents = DateComponents()
        
        guard let day = Int(dayTextField.text!), let month = Int(monthTextField.text!), let year = Int(yearTextField.text!) else {
            //Alert
            
            return
        }
        
//        dateComponents.day = dayTextField.text
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        //calendar.date(from: dateComponents)
        guard let date = calendar.date(from: dateComponents) else {return}
        
        //DateFormatter()
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "lv_LV")
        dateFormatter.dateFormat = "EEEE"
        
        switch findButton.titleLabel?.text{
        case "Find":
            findButton.setTitle("Clear", for: .normal)
            if day >= 1 && day <= 31 && month >= 1 && month <= 12 {
                let weekday = dateFormatter.string(from: date)
                let capitalizedWeekday = weekday.capitalized
                //result.Label.text = result
                resultLabel.text = capitalizedWeekday
            } else {
                //alert
            }
        default:
            findButton.setTitle("Find", for: .normal)
        
        }

    }
    
    func clearAllTextFields(){
        dayTextField.text = ""
        monthTextField.text = ""
        yearTextField.text = ""
        resultLabel.text = "Day of the week, inside your finder"
    }
}

