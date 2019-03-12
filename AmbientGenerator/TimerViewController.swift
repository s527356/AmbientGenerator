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
    
    
    
    @IBAction func Pause(_ sender: Any) {
        
        print("Pause")
    
    }
    
    @IBAction func Stop(_ sender: Any) {
        print("Stop")
    }
    
    @IBAction func ResetButton(_ sender: Any) {
       print("ResetButton")
        
    }
    
    @IBAction func Start(_ sender: Any) {
        print("Start")
        }
        
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

