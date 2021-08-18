//
//  ViewController.swift
//  TrafficLight
//
//  Created by Олег Федоров on 17.08.2021.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var switchColorViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 60
        yellowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
        redView.alpha = 0.2
        yellowView.alpha = 0.2
        greenView.alpha = 0.2
        switchColorViewButton.layer.cornerRadius = 11
    }

    @IBAction func switchColorButtonPressed() {
        switchColorViewButton.setTitle("Next", for: .normal)
        
        if redView.alpha == yellowView.alpha {
            redView.alpha = CGFloat(MAXFLOAT)
            greenView.alpha = 0.2
        }
        else if redView.alpha > 0.2 && yellowView.alpha == greenView.alpha {
            yellowView.alpha = CGFloat(MAXFLOAT)
            redView.alpha = 0.2
        }
        else if yellowView.alpha > 0.2 && greenView.alpha == redView.alpha {
            greenView.alpha = CGFloat(MAXFLOAT)
            yellowView.alpha = 0.2
        }
    }
    
}

