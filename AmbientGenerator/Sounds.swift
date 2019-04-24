//
//  Sounds.swift
//  AmbientGenerator
//
//  Created by Student on 4/4/19.
//  Copyright © 2019 iOS Final Group. All rights reserved.
//

import Foundation
import AVFoundation
class Sounds{
	
	static var sounds = Sounds()
	//Creates objects for audio playback
	var cityLoop: AVAudioPlayer = AVAudioPlayer()
	var rainLoop: AVAudioPlayer = AVAudioPlayer()
	var fireLoop: AVAudioPlayer = AVAudioPlayer()
	var restaurantLoop: AVAudioPlayer = AVAudioPlayer()
	var wavesLoop: AVAudioPlayer = AVAudioPlayer()
	var forestLoop: AVAudioPlayer = AVAudioPlayer()
	//Setup for audio playback
	private init() {
		let cityFile = Bundle.main.path(forResource: "/sounds/BusyCity", ofType: ".mp3")
		let rainFile = Bundle.main.path(forResource: "/sounds/Rain", ofType: ".mp3")
		let fireFile = Bundle.main.path(forResource: "/sounds/Fireplace", ofType: ".mp3")
		let restaurantFile = Bundle.main.path(forResource: "/sounds/Restaurant", ofType: ".mp3")
		let wavesFile = Bundle.main.path(forResource: "/sounds/Waves", ofType: ".mp3")
		let forestFile = Bundle.main.path(forResource: "/sounds/WindyForest", ofType: ".mp3")
		
		do {
			try cityLoop = AVAudioPlayer(contentsOf: URL (fileURLWithPath: cityFile!))
			try rainLoop = AVAudioPlayer(contentsOf: URL (fileURLWithPath: rainFile!))
			try fireLoop = AVAudioPlayer(contentsOf: URL (fileURLWithPath: fireFile!))
			try restaurantLoop = AVAudioPlayer(contentsOf: URL (fileURLWithPath: restaurantFile!))
			try wavesLoop = AVAudioPlayer(contentsOf: URL (fileURLWithPath: wavesFile!))
			try forestLoop = AVAudioPlayer(contentsOf: URL (fileURLWithPath: forestFile!))
		}
		catch {
			print(error)
		}
		//Loops audio infinitely
		cityLoop.numberOfLoops = -1
		rainLoop.numberOfLoops = -1
		fireLoop.numberOfLoops = -1
		restaurantLoop.numberOfLoops = -1
		wavesLoop.numberOfLoops = -1
		forestLoop.numberOfLoops = -1
	}
	//Stop all looping audio
	func stopAll() {
		rainLoop.stop()
		cityLoop.stop()
		fireLoop.stop()
		restaurantLoop.stop()
		wavesLoop.stop()
		forestLoop.stop()
	}
}
