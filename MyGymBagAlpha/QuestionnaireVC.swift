//
//  File.swift
//  MyGymBagAlpha
//
//  Created by Yaniv Amiri on 5/16/18.
//  Copyright © 2018 TGYA. All rights reserved.
//

import UIKit

class QuestionnaireVC: UIViewController {
    
    @IBOutlet weak var sexPicker: UISegmentedControl!
    @IBOutlet weak var agePicker: UIPickerView!
    @IBOutlet weak var numVisitPicker: UIPickerView!
    let ages = ["13-16", "17-22", "23-65", "65+"]
    let days = ["1","2","3","4","5","6","7"]
    var sex: String?
    var age: String?
    var numVisits: String?
    
    @IBAction func sexSwitched(_ sender: Any) {
        switch sexPicker.selectedSegmentIndex {
        case 0:
            sex = "Male"
        case 1:
            sex = "Female"
        default:
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "Logo (1)"))
        self.navigationController?.navigationBar.tintColor = UIColor.white
         navigationController?.navigationBar.barTintColor = UIColor(patternImage: UIImage(named: "Background (1)")!)
        agePicker.delegate = self
        agePicker.dataSource = self
        numVisitPicker.delegate = self
        numVisitPicker.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let suggestionVC = segue.destination as? SuggestionVC else {return}
        suggestionVC.sex = sex
        suggestionVC.age = age
        suggestionVC.numVisits = numVisits
        
    }
}


extension QuestionnaireVC: UIPickerViewDelegate, UIPickerViewDataSource{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.isEqual(agePicker) {
            return ages.count
        } else if pickerView.isEqual(numVisitPicker) {
            return days.count
        }
        return 0
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.isEqual(agePicker) {
            return ages[row]
        } else if pickerView.isEqual(numVisitPicker) {
            return days[row]
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.isEqual(agePicker) {
            age = ages[row]
        } else if pickerView.isEqual(numVisitPicker) {
            numVisits = days[row]
        }
    }
}


