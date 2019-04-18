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
	
    @IBOutlet weak var testBTN: UIButton!
    var oscillator = AKOscillator()
    @IBAction func testBN(_ sender: Any) {
        var timer:Timer = Timer()
        if testBTN.title(for: UIControl.State.normal) == "Test" {
            print("Start")
            testBTN.setTitle("Stop Test", for: UIControl.State.normal)
            let scaleMidiNoteNumbers: [MIDINoteNumber] = [60, 61, 62, 63, 64, 65, 66, 67, 68, 69]
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {t in
                if self.oscillator.isStarted {
                    self.oscillator.frequency = scaleMidiNoteNumbers.randomElement()!.midiNoteToFrequency()
                    self.oscillator.stop()
                    print("Test Stop")
                } else {
                    self.oscillator.start()
                    print("Test Start")
                }
                if self.testBTN.title(for: UIControl.State.normal) == "Test" {
                    t.invalidate()
                    self.oscillator.stop()
                }
            }
        } else {
            testBTN.setTitle("Test", for: UIControl.State.normal)
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

