//
//  TimerViewController.swift
//  AmbientGenerator
//
//  Created by Keenan Piveral-Brooks on 2/25/19.
//  Copyright © 2019 iOS Final Group. All rights reserved.
//

import UIKit



class TimerViewController: UIViewController {
	
	
	@IBOutlet weak var Reset: UIButton!
	@IBOutlet weak var timer: UITextField!
	@IBOutlet weak var Pausebutton: UIButton!
	@IBOutlet weak var startButton: UIButton!
	@IBOutlet weak var StopButton: UIButton!
	
	var counter = 0
	var timer1 = Timer()
	
	//    timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(delayedAction), userInfo: nil, repeats: false)
	
	@IBAction func Pause(_ sender: Any) {
		timer1.invalidate()
		print("Pause")
		//        Sounds.sounds.musicEffect6.pause()
		//        Sounds.sounds.musicEffect4.pause()
		//        Sounds.sounds.musicEffect2.pause()
		//        Sounds.sounds.musicEffect3.pause()
		//        Sounds.sounds.musicEffect5.pause()
		//        Sounds.sounds.musicEffect.pause()
	}
	
	@IBAction func Stop(_ sender: Any) {
		if timer != nil {
			timer1.invalidate()
//			Sounds.sounds.musicEffect6.stop()
//			Sounds.sounds.musicEffect4.stop()
//			Sounds.sounds.musicEffect2.stop()
//			Sounds.sounds.musicEffect3.stop()
//			Sounds.sounds.musicEffect5.stop()
//			Sounds.sounds.musicEffect.stop()
		}
	}
	
	@IBAction func ResetButton(_ sender: Any) {
		if timer != nil {
			timer.text = "\(0)"
			print("ResetButton")
//			Sounds.sounds.musicEffect6.stop()
//			Sounds.sounds.musicEffect4.stop()
//			Sounds.sounds.musicEffect2.stop()
//			Sounds.sounds.musicEffect3.stop()
//			Sounds.sounds.musicEffect5.stop()
//			Sounds.sounds.musicEffect.stop()
		}
	}
	
	@IBAction func Start(_ sender: Any) {
		if timer != nil {
			print("Start")
			timer1.invalidate() // just in case this button is tapped multiple times
			// start the timer
			timer1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
		}
	}
	
	@objc func timerAction() {
		// counter += 1
		if timer != nil {
			counter = Int(timer.text!)!
			if counter != 0{
				counter = counter - 1
				timer.text = "\(counter)"
			}
			else{
				timer1.invalidate()
//				Sounds.sounds.musicEffect6.stop()
//				Sounds.sounds.musicEffect4.stop()
//				Sounds.sounds.musicEffect2.stop()
//				Sounds.sounds.musicEffect3.stop()
//				Sounds.sounds.musicEffect5.stop()
//				Sounds.sounds.musicEffect.stop()
			}
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

