//
//  AppinfoViewController.swift
//  DayFinder
//
//  Created by l.vladislava on 04/02/2021.
//

import UIKit

class AppinfoViewController: UIViewController {

    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescriptionLabel: UILabel!
    
    var infoText = String()
    let appDescText = "This is a home work project."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescriptionLabel.text = appDescText

        if !infoText.isEmpty {
            appInfoLabel.text = infoText
        }
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
