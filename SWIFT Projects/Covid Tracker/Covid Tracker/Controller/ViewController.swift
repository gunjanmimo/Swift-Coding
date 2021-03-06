//
//  ViewController.swift
//  Covid Tracker
//
//  Created by Gunjan  Paul on 09/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, CovidDataManagerDelegate {
    // data label
    
    var covidManager = CovidDataManager()
    
    
    @IBOutlet weak var countryData: UILabel!
    @IBOutlet weak var caseData: UILabel!
    @IBOutlet weak var todayCaseDaata: UILabel!
    @IBOutlet weak var deathData: UILabel!
    @IBOutlet weak var todayDeathData: UILabel!
    @IBOutlet weak var recoveryData: UILabel!
    @IBOutlet weak var activeData: UILabel!
    @IBOutlet weak var criticalData: UILabel!
    @IBOutlet weak var caseMData: UILabel!
    @IBOutlet weak var deathMData: UILabel!
    @IBOutlet weak var totalTestData: UILabel!
    @IBOutlet weak var testsMData: UILabel!
    
    
    //text field
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        covidManager.delegate = self
        textField.delegate = self
    }
    
    @IBAction func searchAction(_ sender: Any) {
        textField.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        print(textField.text!)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        } else{
            textField.placeholder = "enter the country name"
            return false
        }
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if    let country = textField.text{
            covidManager.fetchData(country)
        }
        textField.text = ""
    }
    
    
    
    func didUpdateData(_ data: CovidData)  {
//        @IBOutlet weak var caseMData: UILabel!
//        @IBOutlet weak var deathMData: UILabel!
//        @IBOutlet weak var totalTestData: UILabel!
//        @IBOutlet weak var testsMData: UILabel!
        DispatchQueue.main.async {
            self.countryData.text = data.country
            self.caseData.text = String(data.cases)
        self.todayCaseDaata.text = String(data.todayCases)
        self.deathData.text = String(data.deaths)
        
        
        self.todayDeathData.text = String(data.todayDeaths)
        self.recoveryData.text = String(data.recovered)
        self.activeData.text = String(data.active)
        self.criticalData.text = String(data.critical)
        
        self.caseMData.text = String(data.casesPerOneMillion)
        self.deathMData.text = String(data.deathsPerOneMillion)
        self.totalTestData.text = String(data.totalTests)
        self.testsMData.text = String(data.testsPerOneMillion)
    }
    }
    
    func didFailedWithError(_ error:Error){
        print(error)
    }
}

