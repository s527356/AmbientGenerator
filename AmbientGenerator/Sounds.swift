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
	
	var musicEffect: AVAudioPlayer = AVAudioPlayer()
	var musicEffect2: AVAudioPlayer = AVAudioPlayer()
	var musicEffect3: AVAudioPlayer = AVAudioPlayer()
	var musicEffect4: AVAudioPlayer = AVAudioPlayer()
	var musicEffect5: AVAudioPlayer = AVAudioPlayer()
	var musicEffect6: AVAudioPlayer = AVAudioPlayer()
	
	private init(){
		let musicFile = Bundle.main.path(forResource: "sound1", ofType: ".mp3")
		let musicFile2 = Bundle.main.path(forResource: "Sound2", ofType: ".mp3")
		let musicFile3 = Bundle.main.path(forResource: "Sound3", ofType: ".mp3")
		let musicFile4 = Bundle.main.path(forResource: "Sound4", ofType: ".mp3")
		let musicFile5 = Bundle.main.path(forResource: "Sound5", ofType: ".mp3")
		let musicFile6 = Bundle.main.path(forResource: "Sound6", ofType: ".mp3")
		do {
			try musicEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
			try musicEffect2 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile2!))
			try musicEffect3 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile3!))
			try musicEffect4 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile4!))
			try musicEffect5 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile5!))
			try musicEffect6 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile6!))
			
		}
		catch {
			print(error)
		}
	}
}
