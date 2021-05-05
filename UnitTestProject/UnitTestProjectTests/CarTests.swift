//
//  CarTests.swift
//  UnitTestProjectTests
//
//  Created by João Leonardo Morganti on 05/05/21.
//

import XCTest
@testable import UnitTestProject

class CarTests: XCTestCase {
    var ferrari:Car!
    var jeep:Car!
    var honda:Car!

    override func setUpWithError() throws {
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
    }

    override func tearDownWithError() throws {
        ferrari = nil
        jeep = nil
        honda = nil
    }

    func testSportFasterThanJeep() {
        let minutes = 60
        
        ferrari.start(minutes: minutes)
        jeep.start(minutes: minutes)
        
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }
    

}
