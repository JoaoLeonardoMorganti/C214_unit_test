//
//  Car.swift
//  UnitTestProject
//
//  Created by João Leonardo Morganti on 05/05/21.
//

import Foundation

class Car {
    var kilometers = 0
    var type: CarType
    var transmissionMode: CarTransmissionMode
    
    init(type: CarType, transmissionMode: CarTransmissionMode){
        self.type = type
        self.transmissionMode = transmissionMode
    }
    
    func start(minutes: Int) {
        var speed = 0
        
        switch self.type {
        case .Economy:
            if self.transmissionMode == .Drive {
                speed = 70
            } else if self.transmissionMode == .Reverse {
                speed = 20
            } else {
                speed = 0
            }
        case .OffRoad:
            if self.transmissionMode == .Drive {
                speed = 90
            } else if self.transmissionMode == .Reverse {
                speed = 30
            } else {
                speed = 0
            }
        case .Sport:
            if self.transmissionMode == .Drive {
                speed = 120
            } else if self.transmissionMode == .Reverse {
                speed = 25
            } else {
                speed = 0
            }
        }
        
        self.kilometers = speed * (minutes / 60)
    }
}

enum CarType {
    case Economy
    case OffRoad
    case Sport
}

enum CarTransmissionMode {
    case Drive
    case Reverse
    case Neutral
    case Park
}
