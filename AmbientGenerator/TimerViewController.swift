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
    
    @IBOutlet weak var Timer: UILabel!
    
    @IBOutlet weak var Pausebutton: UIButton!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var StopButton: UIButton!
    var timer = Timer()
    var isTimerRunning = false
    var counter = 0.0
    
    
    @IBAction func Pause(_ sender: Any) {
        
        Reset.isEnabled = true
        startButton.isEnabled = true
        Pausebutton.isenabled = false
        
        
        Reset.alpha = 1.0
        startButton.alpha = 1.0
        Pausebutton.alpha = 0.5
        
        
        isTimerRunning = false
        timer.invalidate()
    
    }
    
    @IBAction func Stop(_ sender: Any) {
        print("Stop")
    }
    
    @IBAction func ResetButton(_ sender: Any) {
       timer.invalidate()
        isTimerRunning = false
        counter = 0.0
        
        timerLabel.text="00.00.00"
        Reset.isEnabled = false
        Pausebutton.isEnabled = false
        startButton.isEnabled = true
        
        
        Reset.alpha = 0.5
        startButton.alpha = 1.0
        Pausebutton.alpha = 0.5
        
    }
    
    @IBAction func Start(_ sender: Any) {
        if !isTimerRunning{
            timer=Timer.scheduledtimer(timeInterval: 0.1,target: self,selector: #selector(runTimer), userInfo: nil,repeats: true)
            isTimerRunning = true
            
            Reset.isEnabled = true
            Pausebutton.isEnabled = true
            startButton.isEnabled=false
            
            
            
            Reset.alpha = 1.0
            startButton.alpha = 0.5
            Pausebutton.alpha = 1.0
            
        }
        
    }
    @objc func runTimer(){
        counter += 0.1
        let flooredCounter = Int(floor(counter))
        let hour = flooredCounter / 3600
        
        let minute = (flooredCounter % 3600) / 60
        var minuteString = "\(minute)"
        if minute < 10{
            minuteString = "0\(minute)"
        }
        let second = (flooredCounter % 3600) % 60
        var secondString = "\(second)"
        if second < 10{
            secondString = "0\(second)"
        }
        let decisecond = string(format: "%1f", counter).components(seperatedBy: ".").last!
        timerlabel.text = "\(hour):\(minuteString):\(secondString).\(decisecond)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Reset.isEnabled = false
        Pausebutton.isEnabled = false
        startButton.isEnabled=true
        Timer.layer.cornerRadius = 5.0
        Timer.layer.marksToBounds = true
        
        
        Reset.layer.cornerRadius = 4.0
        Reset.layer.masksToNounds = true
        Reset.isEnabled = false
        Reset.alpha = 0.5
        
        startButton.layer.cornerradius = startButton.bounds.width / 2.0
        startButton.layer.masksToBounds = true
        // Do any additional setup after loading the view.
        
        Pausebutton.layer.cornerRadius = Pausebutton.bounds.width / 2.0
        Pausebutton.layer.masksToBounds = true
        Pausebutton.isEnabled = false
        Pausebutton.alpha = 0.5
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

