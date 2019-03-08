//
//  SecondViewController.swift
//  AmbientGenerator
//
//  Created by Keenan Piveral-Brooks on 2/19/19.
//  Copyright © 2019 iOS Final Group. All rights reserved.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {
    
    var musicEffect: AVAudioPlayer = AVAudioPlayer()
    
   override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	let musicFile = Bundle.main.path(forResource: "sound1", ofType: ".mp3")
    do {
        try musicEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
    }
    catch {
        print(error)
    }

}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
    
    @IBAction func playMusic(_ sender: Any) {
    musicEffect.play()
    }


    @IBAction func stopMusic(_ sender: Any) {
    musicEffect.stop()
    }
    

}

