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
    var musicEffect2: AVAudioPlayer = AVAudioPlayer()
    var musicEffect3: AVAudioPlayer = AVAudioPlayer()
    var musicEffect4: AVAudioPlayer = AVAudioPlayer()
    var musicEffect5: AVAudioPlayer = AVAudioPlayer()
    var musicEffect6: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playMusic(_ sender: Any) {
        musicEffect.play()
        musicEffect2.stop()
        musicEffect3.stop()
    }
    
    
    @IBAction func stopMusic(_ sender: Any) {
        musicEffect.stop()
    }
    
    @IBAction func playMusic2(_ sender: Any) {
        musicEffect2.play()
        musicEffect.stop()
        musicEffect3.stop()
    }
    
    @IBAction func stopMusic2(_ sender: Any) {
        musicEffect2.stop()
    }
    
    
    @IBAction func playMusic3(_ sender: Any) {
        musicEffect3.play()
        musicEffect2.stop()
        musicEffect.stop()
    }
    
    @IBAction func stopMusic3(_ sender: Any) {
        musicEffect3.stop()
    }
    
    
    @IBAction func playMusic4(_ sender: Any) {
        musicEffect4.play()
        musicEffect2.stop()
        musicEffect3.stop()
        musicEffect.stop()
        
    }
    
    @IBAction func stopMusic4(_ sender: Any) {
        musicEffect4.stop()
    }
    
    
    @IBAction func playMusic5(_ sender: Any) {
        musicEffect5.play()
        musicEffect4.stop()
        musicEffect2.stop()
        musicEffect3.stop()
        musicEffect.stop()
    }
    
    @IBAction func stopMusic5(_ sender: Any) {
        musicEffect5.stop()
    }
    
    
    @IBAction func playMusic6(_ sender: Any) {
        musicEffect6.play()
        musicEffect5.stop()
        musicEffect4.stop()
        musicEffect2.stop()
        musicEffect3.stop()
        musicEffect.stop()
    }
    
    
    @IBAction func stopMusic6(_ sender: Any) {
        musicEffect6.stop()
    }
    
}

