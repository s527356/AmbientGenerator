//
//  FirstViewController.swift
//  AmbientGenerator
//
//  Created by Keenan Piveral-Brooks on 2/19/19.
//  Copyright © 2019 iOS Final Group. All rights reserved.
//

import UIKit
import AudioKit

class GeneratorViewController: UIViewController {
	
	//Changes values associated with slider
	@IBAction func decaySlider(_ sender: UISlider) {
		dec = Double(sender.value) / 100
	}
	
	@IBAction func pitchSlider(_ sender: UISlider) {
		pitchOffset = MIDINoteNumber(sender.value / 10)
	}
	
	@IBAction func droneSlider(_ sender: UISlider) {
		droneVol = Int(Int(sender.value) / 1.2)
	}
	
	@IBAction func energySlider(_ sender: UISlider) {
		tempo = 5 - (Double(sender.value) / 20)
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		//setup everything for audiokit and effects
		let delay = AKDelay(AKMixer(self.oscillator, self.drone), time: delayTime, feedback: delayFeedback, lowPassCutoff: 15000.0, dryWetMix: 90)
		AudioKit.output = delay
		do {
			try AudioKit.start()
		} catch {
			print("Error starting AudioKit") 
		}
	}
	
	var oscillator = AKOscillatorBank()
	var drone = AKOscillatorBank()
	var droneVol: Int = 0 //Volume of drone osc
	var att: Double = 0.05 //Attack
	var dec: Double	= 0.3 //Decay
	var sus: Double	= 0 //Sustain
	var rel: Double	= 0.1 //Release
	var delayTime: Double = 1
	var delayFeedback: Double = 0.6
	var tempo: Double = 3
	var pitchOffset: MIDINoteNumber = 0 //Offset midi note for pitch slider
	var previousNote: MIDINoteNumber = 0 //Previously played note to clear from buffer
	let scaleMidiNoteNumbers: [MIDINoteNumber] = [72, 74, 76, 77, 79, 81, 83] //C major scale
	var genTimer: Timer = Timer() //Timer for generation
	var isStarted: Bool = false //Start flag for button
	
	@IBOutlet weak var startBNText: UIButton!
	
	//Starts and stops ambient generation
	@IBAction func startBN(_ sender: Any) {
		if isStarted {
			stopGenerator()
			startBNText.setTitle("Start", for: .normal)
		}
		else if !isStarted {
			startGenerator()
			startBNText.setTitle("Stop", for: .normal)
		}
	}
	
	//All the actual generation happens here
	func startGenerator() {
		self.isStarted = true;
		self.drone.attackDuration = 0.1
		self.drone.play(noteNumber: 60 + pitchOffset, velocity: MIDIVelocity(droneVol)) //Start drone
		self.drone.play(noteNumber: 48 + pitchOffset, velocity: MIDIVelocity(droneVol)) //Start drone note 2
		self.genTimer = Timer.scheduledTimer(withTimeInterval: tempo, repeats: true) {_ in
			//Executes every interval specified by tempo slider
			self.oscillator.attackDuration = self.att
			self.oscillator.decayDuration = self.dec
			self.oscillator.sustainLevel = self.sus
			self.oscillator.releaseDuration = self.rel
			//Picking the next note and playing it
			let randomNote = (self.scaleMidiNoteNumbers.randomElement()!) + self.pitchOffset //Offset pitch from slider
			self.oscillator.stop(noteNumber: self.previousNote) //Stops previous note because AudioKit is weird
			self.oscillator.play(noteNumber: randomNote, velocity: 100)
			self.previousNote = randomNote
		}
	}
	
	//Stop the timer associated with ambient generation as well as drones
	func stopGenerator() {
		self.isStarted = false
		self.genTimer.invalidate() //Stops generation
		self.drone.stop(noteNumber: 60 + pitchOffset) //Stops drone
		self.drone.stop(noteNumber: 48 + pitchOffset) //Stops drone note 2
	}
}

