//
//  generator.swift
//  AmbientGenerator
//
//  Created by Vinukonda,Sai Manikanta Durga Prasad on 3/5/19.
//  Copyright © 2019 iOS Final Group. All rights reserved.
//

import Foundation

struct Generator {
    static var shared = Generator()
    var droneValue = 0
    var melodyValue = 0
    var chaosValue = 0
    var energyValue = 0
    
    
    
    
    private init(){}
    func slideChange()->Int {
        if droneValue >= 0 && droneValue <= 100 {
            return 50
        }
        else {
            return 0
        }
    }
    func melodyslideChange()->Int {
        if energyValue >= 0 && energyValue <= 100 {
            return 50
        }
        else {
            return 0
        }
    }
    func chaosslideChange()->Int {
        if chaosValue >= 0 && chaosValue <= 100 {
            return 50
        }
        else {
            return 0
        }
    }
    func energyslideChange()->Int {
        if energyValue >= 0 && energyValue <= 100 {
            return 50
        }
        else {
            return 0
        }
    }
}
