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
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let delay = AKDelay(AKMixer(self.oscillator), time: 1, feedback: 0.6, lowPassCutoff: 15000.0, dryWetMix: 90)
		AudioKit.output = delay
		do {
			try AudioKit.start()
		} catch {
			print("Error starting AudioKit")
		}
	}
	
	var oscillator = AKOscillatorBank()
	var drone = AKOscillatorBank()
	var att: Double = 0.05 //Attack
	var dec: Double	= 0.3 //Decay
	var sus: Double	= 0 //Sustain
	var rel: Double	= 0.1 //Release
	var previousNote: MIDINoteNumber = 0
	let scaleMidiNoteNumbers: [MIDINoteNumber] = [72, 74, 76, 77, 79, 81, 83] //C major scale
	
	@IBAction func testBN(_ sender: Any) {
		self.drone.attackDuration = 1.0
		self.drone.play(noteNumber: 48, velocity: 60)
		let _ = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) {_ in //should be renamed in order to close timer using .invalidate()
			
			self.oscillator.attackDuration = self.att
			self.oscillator.decayDuration = self.dec
			self.oscillator.sustainLevel = self.sus
			self.oscillator.releaseDuration = self.rel
			
			let randomNote = self.scaleMidiNoteNumbers.randomElement()!
			self.oscillator.stop(noteNumber: self.previousNote)
			self.oscillator.play(noteNumber: randomNote, velocity: 100)
			self.previousNote = randomNote
			print("Playing \(randomNote)")
		}
	}
}

