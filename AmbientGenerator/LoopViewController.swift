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
   
    var value1:TimerViewController!
//    var musicEffect: AVAudioPlayer = AVAudioPlayer()
//    var musicEffect2: AVAudioPlayer = AVAudioPlayer()
//    var musicEffect3: AVAudioPlayer = AVAudioPlayer()
//    var musicEffect4: AVAudioPlayer = AVAudioPlayer()
//    var musicEffect5: AVAudioPlayer = AVAudioPlayer()
//    var musicEffect6: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        value1 = (self.tabBarController?.viewControllers![2] as! TimerViewController)
//        print(value1.counter)
//        // Do any additional setup after loading the view, typically from a nib.
//        let musicFile = Bundle.main.path(forResource: "sound1", ofType: ".mp3")
//        let musicFile2 = Bundle.main.path(forResource: "Sound2", ofType: ".mp3")
//        let musicFile3 = Bundle.main.path(forResource: "Sound3", ofType: ".mp3")
//        let musicFile4 = Bundle.main.path(forResource: "Sound4", ofType: ".mp3")
//        let musicFile5 = Bundle.main.path(forResource: "Sound5", ofType: ".mp3")
//        let musicFile6 = Bundle.main.path(forResource: "Sound6", ofType: ".mp3")
//        do {
//            try musicEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
//            try musicEffect2 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile2!))
//            try musicEffect3 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile3!))
//            try musicEffect4 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile4!))
//            try musicEffect5 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile5!))
//            try musicEffect6 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile6!))
//
//        }
//        catch {
//            print(error)
//        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playMusic(_ sender: Any) {
       Sounds.sounds.musicEffect.play()
       Sounds.sounds.musicEffect2.stop()
       Sounds.sounds.musicEffect3.stop()
        //musicEffect.play()
        //musicEffect2.stop()
        //musicEffect3.stop()
    }
    
    
    @IBAction func stopMusic(_ sender: Any) {
       Sounds.sounds.musicEffect.stop()
    }
    
    @IBAction func playMusic2(_ sender: Any) {
        Sounds.sounds.musicEffect2.play()
        Sounds.sounds.musicEffect.stop()
        Sounds.sounds.musicEffect.stop()
//        musicEffect2.play()
//        musicEffect.stop()
//        musicEffect3.stop()
    }
    
    @IBAction func stopMusic2(_ sender: Any) {
        Sounds.sounds.musicEffect2.play()
    }
    
    
    @IBAction func playMusic3(_ sender: Any) {
        Sounds.sounds.musicEffect3.play()
        Sounds.sounds.musicEffect2.stop()
        Sounds.sounds.musicEffect.stop()
//        musicEffect3.play()
//        musicEffect2.stop()
//        musicEffect.stop()
    }
    
    @IBAction func stopMusic3(_ sender: Any) {
        Sounds.sounds.musicEffect3.stop()
        //musicEffect3.stop()
    }
    
    
    @IBAction func playMusic4(_ sender: Any) {
        Sounds.sounds.musicEffect4.play()
        Sounds.sounds.musicEffect2.stop()
        Sounds.sounds.musicEffect3.stop()
        Sounds.sounds.musicEffect.stop()
//        musicEffect4.play()
//        musicEffect2.stop()
//        musicEffect3.stop()
//        musicEffect.stop()
        
    }
    
    @IBAction func stopMusic4(_ sender: Any) {
        Sounds.sounds.musicEffect4.stop()
//        musicEffect4.stop()
    }
    
    
    @IBAction func playMusic5(_ sender: Any) {
        Sounds.sounds.musicEffect5.play()
        Sounds.sounds.musicEffect4.stop()
        Sounds.sounds.musicEffect2.stop()
        Sounds.sounds.musicEffect3.stop()
        Sounds.sounds.musicEffect.stop()
//        musicEffect5.play()
//        musicEffect4.stop()
//        musicEffect2.stop()
//        musicEffect3.stop()
//        musicEffect.stop()
    }
    
    @IBAction func stopMusic5(_ sender: Any) {
        Sounds.sounds.musicEffect5.stop()
//        musicEffect5.stop()
    }
    
    
    @IBAction func playMusic6(_ sender: Any) {
        Sounds.sounds.musicEffect6.play()
        Sounds.sounds.musicEffect4.stop()
        Sounds.sounds.musicEffect2.stop()
        Sounds.sounds.musicEffect3.stop()
        Sounds.sounds.musicEffect5.stop()
        Sounds.sounds.musicEffect.stop()
//        musicEffect6.play()
//        musicEffect5.stop()
//        musicEffect4.stop()
//        musicEffect2.stop()
//        musicEffect3.stop()
//        musicEffect.stop()
    }
    
    
    @IBAction func stopMusic6(_ sender: Any) {
        Sounds.sounds.musicEffect6.stop()
//        musicEffect6.stop()
    }
    
}

