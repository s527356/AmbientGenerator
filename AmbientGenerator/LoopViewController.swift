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
    var music: AVAudioPlayer = AVAudioPlayer()
    

    
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

    

    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    
        func playMusic(_ sender: Any) {
    musicEffect.play()
           
    }


        func stopMusic(_ sender: Any) {
    musicEffect.stop()
    }
    
    
    
        let musicFilee = Bundle.main.path(forResource: "sound2", ofType: ".mp3")
    
        do {
            try music = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFilee!))
        }
        catch {
            print(error)
        }
        
        
        
//        func playMusicc(_ sender: Any) {
//            music.play()
//        }
        
}
}

}
