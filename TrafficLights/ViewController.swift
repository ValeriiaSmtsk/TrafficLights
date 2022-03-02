//
//  ViewController.swift
//  TrafficLights
//
//  Created by Валерия Сальник on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 28
        yellowLightView.layer.cornerRadius = 28
        greenLightView.layer.cornerRadius = 28
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
               
    }
    
    @IBAction func turnOnTrafficLightButton() {
        
        if startButton.currentTitle == "Start" {
            startButton.setTitle("NEXT", for: .normal)
            redLightView.alpha = 1
        } else if startButton.currentTitle == "NEXT" {
            if redLightView.alpha == 1 {
                redLightView.alpha = 0.3
                yellowLightView.alpha = 1
            } else if yellowLightView.alpha == 1 {
                yellowLightView.alpha = 0.3
                greenLightView.alpha = 1
            } else {
                greenLightView.alpha = 0.3
                redLightView.alpha = 1
            }
            
        }
        
    }
}
