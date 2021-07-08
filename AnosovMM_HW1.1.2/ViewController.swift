//
//  ViewController.swift
//  AnosovMM_HW1.1.2
//
//  Created by Михаил on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var color = ""
    
    @IBOutlet weak var redIndicatorView: UIView!
    @IBOutlet weak var yellowIndicatorView: UIView!
    @IBOutlet weak var greenIndicatorView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redIndicatorView.layer.cornerRadius = 100
        yellowIndicatorView.layer.cornerRadius = 100
        greenIndicatorView.layer.cornerRadius = 100
        
        redIndicatorView.alpha = 0.5
        yellowIndicatorView.alpha = 0.5
        greenIndicatorView.alpha = 0.5
        
        startButton.layer.cornerRadius = 10
        startButton.setTitle("START", for: .normal)
    }
    
    @IBAction func startButtonPressed() {

        switch color {
        case "red":
            redIndicatorView.alpha = 0.5
            yellowIndicatorView.alpha = 1
            greenIndicatorView.alpha = 0.5
            
            color = "yellow"
            
            startButton.setTitle("NEXT", for: .normal)
        case "yellow":
            redIndicatorView.alpha = 0.5
            yellowIndicatorView.alpha = 0.5
            greenIndicatorView.alpha = 1
            
            color = "green"
            
            startButton.setTitle("NEXT", for: .normal)
        case "green":
            redIndicatorView.alpha = 0.5
            yellowIndicatorView.alpha = 0.5
            greenIndicatorView.alpha = 0.5
            
            color = ""
            
            startButton.setTitle("START", for: .normal)
        default:
            redIndicatorView.alpha = 1
            yellowIndicatorView.alpha = 0.5
            greenIndicatorView.alpha = 0.5
            
            color = "red"
            
            startButton.setTitle("NEXT", for: .normal)
        }
    }
}

