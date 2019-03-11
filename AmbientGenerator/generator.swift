//
//  generator.swift
//  AmbientGenerator
//
//  Created by Vinukonda,Sai Manikanta Durga Prasad on 3/5/19.
//  Copyright © 2019 iOS Final Group. All rights reserved.
//

import Foundation

import AudioKit

class AudioGenerator {
	
	static let shared = AudioGenerator()
	
	func test() {
		var oscillator = AKOscillator()
		AudioKit.output = oscillator      //Tell AudioKit what to output
		do {
			try AudioKit.start()  //Start up AudioKit
		} catch {
			print("Error Starting AudioKit")
		}
		oscillator.start()  //Start the oscillator
		oscillator.frequency = random(in: 220...880)  //Set oscillator parameters
	}
}

struct GeneratorController {
	static var shared = GeneratorController()
	var droneValue = 0
	var melodyValue = 0
	var chaosValue = 0
	var energyValue = 0
	
	private init(){}
	func slideChange()->Int {
		if droneValue >= 0 && droneValue <= 100 {
			return 50
		}
		else {
			return 0
		}
	}
	func melodyslideChange()->Int {
		if energyValue >= 0 && energyValue <= 100 {
			return 50
		}
		else {
			return 0
		}
	}
	func chaosslideChange()->Int {
		if chaosValue >= 0 && chaosValue <= 100 {
			return 50
		}
		else {
			return 0
		}
	}
	func energyslideChange()->Int {
		if energyValue >= 0 && energyValue <= 100 {
			return 50
		}
		else {
			return 0
		}
	}
}
