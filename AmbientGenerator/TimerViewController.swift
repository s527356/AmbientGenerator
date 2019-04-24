//
//  TimerViewController.swift
//  AmbientGenerator
//
//  Created by Keenan Piveral-Brooks on 2/25/19.
//  Copyright © 2019 iOS Final Group. All rights reserved.
//

import UIKit



class TimerViewController: UIViewController {
	
	@IBOutlet weak var resetBN: UIButton!
	@IBOutlet weak var timerTF: UITextField!
	@IBOutlet weak var startBN: UIButton!
	
	var counter = 0
	var timer = Timer()
	var isStarted: Bool = false
	
	@IBOutlet weak var startBNText: UIButton!
	
	@IBAction func startBN(_ sender: Any) {
		if isStarted {
			startBNText.setTitle("Start", for: .normal)
			Sounds.sounds.stopAll()
			timerTF.text = ""
			counter = 0
			isStarted = false
		}
		else if !isStarted && !timerTF.text!.isEmpty {
			let minutes = Int(timerTF.text!) ?? 0
			counter = minutes * 60
			startBNText.setTitle("Reset", for: .normal)
			timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil,repeats: true)
			isStarted = true
		}
	}
	
	@objc func timerAction() {
		if counter != 0 {
			counter = counter - 1
			timerTF.text = String(format: "%d:%02d", (counter / 60), (counter % 60))
		}
		else {
			timer.invalidate()
			Sounds.sounds.stopAll()
			timerTF.text = ""
			startBNText.setTitle("Start", for: .normal)
			isStarted = false
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

