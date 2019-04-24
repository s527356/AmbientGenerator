//
//  SecondViewController.swift
//  AmbientGenerator
//
//  Created by Keenan Piveral-Brooks on 2/19/19.
//  Copyright © 2019 iOS Final Group. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
	
	var value1:TimerViewController!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	//Toggles looping ambient audio on or off
	@IBAction func citySwitch(_ sender: UISwitch) {
		if sender.isOn { Sounds.sounds.cityLoop.play() }
		else if !sender.isOn { Sounds.sounds.cityLoop.stop() }
	}
	
	@IBAction func fireSwitch(_ sender: UISwitch) {
		if sender.isOn { Sounds.sounds.fireLoop.play() }
		else if !sender.isOn { Sounds.sounds.fireLoop.stop() }
	}
	
	@IBAction func rainSwitch(_ sender: UISwitch) {
		if sender.isOn { Sounds.sounds.rainLoop.play() }
		else if !sender.isOn { Sounds.sounds.rainLoop.stop() }
	}
	
	@IBAction func chatterSwitch(_ sender: UISwitch) {
		if sender.isOn { Sounds.sounds.restaurantLoop.play() }
		else if !sender.isOn { Sounds.sounds.restaurantLoop.stop() }
	}
	
	@IBAction func wavesSwitch(_ sender: UISwitch) {
		if sender.isOn { Sounds.sounds.wavesLoop.play() }
		else if !sender.isOn { Sounds.sounds.wavesLoop.stop() }
	}
	
	@IBAction func forestSwitch(_ sender: UISwitch) {
		if sender.isOn { Sounds.sounds.forestLoop.play() }
		else if !sender.isOn { Sounds.sounds.forestLoop.stop() }
	}
}

