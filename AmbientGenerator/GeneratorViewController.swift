//
//  FirstViewController.swift
//  AmbientGenerator
//
//  Created by Keenan Piveral-Brooks on 2/19/19.
//  Copyright © 2019 iOS Final Group. All rights reserved.
//

import UIKit
import AudioKit

class FirstViewController: UIViewController {

	let audioGenerator = AudioGenerator.shared
	
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
	
	var oscillator = AKOscillator()
	@IBAction func testBN(_ sender: Any) {
		oscillator.amplitude = random(in: 0.5...1)
		oscillator.frequency = random(in: 220...880)
		Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
			if self.oscillator.isStarted {
				self.oscillator.stop()
				print("Test Stop")
			} else {
				self.oscillator.start()
				print("Test Start")
			}
		}
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		AudioKit.output = AKMixer(oscillator)
		do {
			try AudioKit.start()
		} catch {
			print("Error starting AudioKit")
		}
	}
	
	
}

