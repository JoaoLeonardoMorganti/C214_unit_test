//
//  CarTests.swift
//  UnitTestProjectTests
//
//  Created by João Leonardo Morganti on 05/05/21.
//

import XCTest
@testable import UnitTestProject

class CarTests: XCTestCase {
    var driveJeep: Car!
    var driveFerrari: Car!
    
    var reverseJeep: Car!
    var reverseFerrari: Car!

    override func setUpWithError() throws {
        driveJeep = Car(type: .OffRoad, transmissionMode: .Drive)
        driveFerrari = Car(type: .Sport, transmissionMode: .Drive)
        
        reverseJeep = Car(type: .OffRoad, transmissionMode: .Reverse)
        reverseFerrari = Car(type: .Sport, transmissionMode: .Reverse)
    }

    override func tearDownWithError() throws {
        driveJeep = nil
        driveFerrari = nil
        
        reverseJeep = nil
        reverseFerrari = nil
    }
    
    func testKilometersCalculator() {
        let minutes = 60
        
        driveFerrari.start(minutes: minutes)
        
        XCTAssertTrue(driveFerrari.kilometers == 120)
    }

    func testSportFasterThanOffRoadWhenDrive() {
        let minutes = 60
        
        driveJeep.start(minutes: minutes)
        driveFerrari.start(minutes: minutes)
        
        XCTAssertTrue(driveFerrari.kilometers > driveJeep.kilometers)
    }
    
    func testSportAlwaysFasterThanOffRoadWhen() {
        let minutes = 60
        
        reverseJeep.start(minutes: minutes)
        reverseFerrari.start(minutes: minutes)
        
        XCTAssertTrue(reverseFerrari.kilometers > reverseJeep.kilometers)   //wrong test
//        XCTAssertTrue(reverseFerrari.kilometers < reverseJeep.kilometers)   //right test
    }
}
