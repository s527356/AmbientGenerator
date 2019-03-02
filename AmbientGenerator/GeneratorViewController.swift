//
//  FirstViewController.swift
//  AmbientGenerator
//
//  Created by Keenan Piveral-Brooks on 2/19/19.
//  Copyright © 2019 iOS Final Group. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var droneLBL: UILabel!
    
    @IBOutlet weak var melodyLBL: UILabel!
    
    @IBOutlet weak var chaosLBL: UILabel!
    @IBOutlet weak var energyLBL: UILabel!
    
    @IBAction func chaosSlider(_ sender: UISlider) {
        chaosLBL.text=String(Int(sender.value))
    }
    
    @IBAction func melodySlider(_ sender: UISlider) {
        melodyLBL.text=String(Int(sender.value))
    }
    
    @IBAction func droneSlider(_ sender: UISlider) {
        droneLBL.text = String(Int(sender.value))
    }
    
    
    
    @IBAction func energySlider(_ sender: UISlider) {
        energyLBL.text=String(Int(sender.value))
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}


}

