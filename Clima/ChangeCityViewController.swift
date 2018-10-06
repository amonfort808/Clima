//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by anthony monfort on 10/6/18.
//  Copyright © 2018 Anthony Monfort. All rights reserved.
//

import UIKit


protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    // IBOutlet links to the UI text
    @IBOutlet weak var changeCityTextField: UITextField!

    
    // IBAction gets called when the user taps on the "Get Weather" button
    @IBAction func getWeatherPressed(_ sender: AnyObject) {

        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)

        self.dismiss(animated: true, completion: nil)
        
    }
    
    // IBAction gets called when the user taps the back button. It dismisses the ChangeCityViewController
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
